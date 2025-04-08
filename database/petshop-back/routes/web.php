<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

// localhost/lumen/public/
// localhost:8888/lumen/public/ for MAC 
$router->get('/', function () use ($router) {
    return $router->app->version();
});


// localhost/lumen/public/pets
$router->get('/pets', 'PetController@getAll');
$router->get('/pets/{id}', 'PetController@getOne');
$router->post('/pets/add', 'PetController@save');
$router->post('/pets/edit/{id}', 'PetController@update');
$router->delete('/pets/delete/{id}', 'PetController@delete');

// localhost/lumen/public/dogs
$router->get('/dogs', 'DogController@getAll');
$router->get('/dogs/{id}', 'DogController@getOne');
$router->post('/dogs/add', 'DogController@save');
$router->post('/dogs/edit/{id}', 'DogController@update');
$router->delete('/dogs/delete/{id}', 'DogController@delete');

// the get '/' you can chanage whatever you want all the name inside, but when you browse need follow what you create

// @getALL, getONE..... can reuse for any controller, so no need specific mention getONEbook

