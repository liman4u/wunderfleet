<?php
/**
 * Created by PhpStorm.
 * User: limanadamu
 * Date: 10/10/2018
 * Time: 3:02 PM
 */

namespace App\Http\Controllers;

use App\Jobs\PaymentJob;
use App\Repositories\CustomerRepository;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Log;

/**
 * Class HomeController
 * @package App\Http\Controllers
 */
class HomeController extends Controller
{
    /**
     * @var CustomerRepository
     */
    protected $repository;

    /**
     * CustomersController constructor.
     * @param CustomerRepository $repository
     */
    public function __construct(CustomerRepository $repository){
        $this->repository = $repository;
    }

    /**
     * Home of Wunder Fleet Customer Registration
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index() {

        return view('index');
    }

    /**
     * Store customer information
     *
     * @param Request $request
     */
    public function storeCustomerInformation(Request $request) {

        // save customer information into database

        $customer = $this->repository->createCustomer($request->all());


        // make payment

        $data = array('customerId' => $customer->id,'iban' => $request->input('IBAN'),'owner' => $request->input('account_owner'));

        //Log::info(json_encode($data));


        try {
            $response = $this->dispatch(new PaymentJob($data));

            $payment_id = $response->paymentDataId;

            Log::info($payment_id);

            if ($response && $payment_id) {

                //save payment status
                $customer->payment_status = 'SUCCESS';
                $customer->payment_id = $payment_id;
                $customer->save();

                return json_encode($payment_id);

            } else {
                throw new \Exception(json_encode($response));
            }
        } catch (\Exception $e) {


            if (method_exists($e, 'hasResponse')) {
                if ($e->hasResponse()) {

                    $message = (string)$e->getResponse()->getBody();

                }
            }else{
                $message = $e->getMessage();
            }

            logger()->error("An error occurred while sending payment", [
                'file' => $e->getFile(), 'line' => $e->getLine(), 'message' => $message
            ]);


            return null;
        }

    }



}