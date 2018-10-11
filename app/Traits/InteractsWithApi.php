<?php
/**
 * Created by PhpStorm.
 * User: limanadamu
 * Date: 11/10/2018
 * Time: 9:45 AM
 */

namespace App\Traits;

use GuzzleHttp\Client;
use Log;

trait InteractsWithApi
{
    /**
     * @param $endpoint
     * @return null|string
     */
    public function buildUrl($endpoint) {

        $apiUrl = config('services.wunder_payment_api.url');


        // Ensure base url has trailing slash
        $apiUrl .= !preg_match('#\/$#', $apiUrl) ? '/' : '';

        // Strip leading slash from endpoint
        if (preg_match('#^\/#', trim($endpoint))) {
            $endpoint = preg_replace('#^\/#', '', $endpoint);
        }

        logger("Url : ".$apiUrl . $endpoint);

        return $apiUrl . $endpoint;
    }

    /**
     * Fetch data from api
     * @param $method
     * @param $endpoint
     * @param array $options
     * @return mixed|null
     */
    private function fetchFromApi($method, $endpoint, $options = []) {

        try {

            $client = new Client();
            $response = $client->request($method, $this->buildUrl($endpoint), $options);


            logger("Wunder Payment Api {$method} $endpoint", ['code' => $response->getStatusCode()]);

            return \GuzzleHttp\json_decode($response->getBody());
        } catch (\Exception $e) {

            logger()->error("Api request exception trying to reach $endpoint", [
                'message' => $e->getMessage(), 'file' => $e->getFile(), 'line' => $e->getLine()
            ]);

            return null;
        }
    }



    /**
     * @param $endpoint
     * @param array $params
     * @return mixed
     */
    public function getFromApi($endpoint, $params = []) {
        return $this->fetchFromApi('GET', $endpoint, ['query' => $params]);
    }

    /**
     * @param $endpoint
     * @param array $postData
     * @return mixed
     */
    public function postToApi($endpoint, $postData = []) {

        return $this->fetchFromApi('POST', $endpoint, ['json' => $postData];
    }




    /**
     * @param $endpoint
     * @param array $putData
     * @return mixed|null
     */
    public function putToApi($endpoint, $putData = []) {
        return $this->fetchFromApi('PUT', $endpoint, ['json' => $putData]);
    }
}