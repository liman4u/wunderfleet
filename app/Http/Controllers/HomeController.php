<?php
/**
 * Created by PhpStorm.
 * User: limanadamu
 * Date: 10/10/2018
 * Time: 3:02 PM
 */

namespace App\Http\Controllers;

use Illuminate\Http\Request;

/**
 * Class HomeController
 * @package App\Http\Controllers
 */
class HomeController extends Controller
{

    public function index() {

        return view('index');
    }

    public function storeCustomerInformation(Request $request) {


    }



}