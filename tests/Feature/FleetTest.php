<?php

namespace Tests\Feature;

use App\Customer;
use App\Repositories\CustomerRepository;
use GuzzleHttp\Client;
use GuzzleHttp\Exception\ClientException;
use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

class FleetTest extends TestCase
{
    /**
     * A basic test example.
     *
     * @return void
     */
    public function testHomePageTest()
    {
        $response = $this->get('/');

        $response->assertStatus(200);
    }

    /**
     * Test for can create customer with reposistory
     */
    public function testCanCreateCustomer(){

        $data = [

            'first_name' => $this->faker->name,
            'last_name' => $this->faker->name,
            'telephone' => $this->faker->phoneNumber,
            'street_name' => $this->faker->streetName,
            'house_number' => $this->faker->streetAddress,
            'zip_code' => $this->faker->text(10),
            'city' => $this->faker->city,
            'account_owner' => $this->faker->name,
            'IBAN' => $this->faker->iban('DE')

        ];


        $customerRepo = new CustomerRepository(new Customer);
        $customer = $customerRepo->createCustomer($data);


        $this->assertInstanceOf(Customer::class, $customer);
        $this->assertEquals($data['first_name'], $customer->first_name);
        $this->assertEquals($data['last_name'], $customer->last_name);
        $this->assertEquals($data['telephone'], $customer->telephone);
    }

    /**
     * Test for can retrieve payment id
     */
    public function testCanRetrievePaymentIdFleetAPI(){

        $apiUrl = config('services.wunder_payment_api.url');


        $customer = factory(Customer::class)->create();

        $data = ['json' =>
            [
                'customerId' => $customer->id,
                'iban' => $customer->IBAN,
                'owner' => $customer->account_owner
            ]
        ];

        $client = new \GuzzleHttp\Client(['base_uri' => $apiUrl]);
        $response = $client->request('POST', $apiUrl.'/wunderfleet-recruiting-backend-dev-save-payment-data',  $data);

        $this->assertEquals(200, $response->getStatusCode());
        $body = json_decode($response->getBody(), true);

        $this->assertArrayHasKey('paymentDataId', $body);

    }

    /**
     * Test for can not retrieve payment id with invalid data
     */
    public function testCanNotRetrievePaymentIdFleetAPIInvalidData(){

        $apiUrl = config('services.wunder_payment_api.url');


        $customer = factory(Customer::class)->create();

        $data = ['json' =>
            [
                'customerId' => $customer->id,
            ]
        ];

        try{

            $client = new \GuzzleHttp\Client(['base_uri' => $apiUrl]);
            $response = $client->request('POST', $apiUrl.'/wunderfleet-recruiting-backend-dev-save-payment-data',  $data);

            $body = json_decode($response->getBody(), true);

            $this->assertArrayHasKey('error', $body);

        }catch (ClientException $ex){

            $this->assertEquals(400, $ex->getCode());

        }


    }

    /**
     * Test for can not retrieve payment id with empty data
     */
    public function testCanNotRetrievePaymentIdFleetAPIEmptyData(){

        $apiUrl = config('services.wunder_payment_api.url');

        $data = ['json' =>
            []
        ];

        try{

            $client = new \GuzzleHttp\Client(['base_uri' => $apiUrl]);
            $response = $client->request('POST', $apiUrl.'/wunderfleet-recruiting-backend-dev-save-payment-data',  $data);

            $body = json_decode($response->getBody(), true);

            $this->assertArrayHasKey('error', $body);

        }catch (ClientException $ex){

            $this->assertEquals(400, $ex->getCode());

        }


    }
}
