<?php
/**
 * Created by PhpStorm.
 * User: limanadamu
 * Date: 10/10/2018
 * Time: 3:02 PM
 */

namespace App\Http\Controllers;

use App\Customer;
use Illuminate\Http\Request;

/**
 * Class HomeController
 * @package App\Http\Controllers
 */
class HomeController extends Controller
{

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

        // save customer information

        $customer = new Customer($request->all());
        $customer->save();

        return true;
    }



}