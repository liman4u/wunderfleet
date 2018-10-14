<?php

namespace Tests\Feature;

use App\Customer;
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
