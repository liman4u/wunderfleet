<?php
/**
 * Created by PhpStorm.
 * User: limanadamu
 * Date: 14/10/2018
 * Time: 9:29 PM
 */

namespace App\Repositories;

use App\Customer;
use Illuminate\Database\QueryException;

/**
 * Class CustomerRepository
 * @package App\Repositories
 */
class CustomerRepository
{

    /**
     * CustomerRepository constructor.
     * @param Customer $customer
     */
    public function __construct(Customer $customer)
    {
        $this->model = $customer;
    }
    
    
    /**
     * @param array $data
     * @return Customer
     */
    public function createCustomer(array $data) : Customer
    {


        try {
            return $this->model->create($data);
        } catch (QueryException $e) {
            return null;
        }
    }

}