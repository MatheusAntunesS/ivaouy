<?php

use Illuminate\Database\Seeder;
use App\User;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('localuser_admin')->insert([
            'name' => 'root',
            'email' => 'uy-wm@ivao.aero',
            'password' => bcrypt('uyivao')
        ]);
    }
}
