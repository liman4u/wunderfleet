<?php

namespace Tests;

use Illuminate\Foundation\Testing\TestCase as BaseTestCase;

abstract class TestCase extends BaseTestCase
{
    use CreatesApplication;

    /**
     * @var \Faker\Generator
     */
    protected $faker;
    public function setUp()
    {
        $this->faker = \Faker\Factory::create();
        parent::setUp();
    }
}
