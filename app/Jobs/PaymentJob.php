<?php

namespace App\Jobs;

use App\Traits\InteractsWithApi;

class PaymentJob
{
    use InteractsWithApi;

    private $data;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($data)
    {
        $this->data = $data;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        return $this->postToApi('/wunderfleet-recruiting-backend-dev-save-payment-data', $this->data);
    }
}
