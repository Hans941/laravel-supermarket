<?php

use Illuminate\Database\Seeder;

class CouponCodeSeeder extends Seeder
{
    public function run()
    {
        factory(App\Models\CouponCode::class, 20)->create();
    }
}
