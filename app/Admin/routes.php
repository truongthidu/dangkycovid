<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');

    $router->resource('users', UserController::class);
    $router->resource('doituongs', DoituongController::class);
    $router->resource('ngay-tiems', NgayTiemController::class);
    $router->resource('noi-tiems', NoiTiemController::class);
    $router->resource('lich-tiems', LichTiemController::class);
    
});
