<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Dog;


class DogController extends Controller {
    /**
     * Create a new controller instance.
     *
     * @return void
     */

public function getAll() {
    // SELECT * FROM books
    // $dogs = Dog::all();

    $dogs = Dog::select('id', 'dog_name', 'dog_image','sex','location','price','created_at','updates_at')->orderBy('dog_name','ASC')->get();
        return response()->json($dogs);

    // SELECT id, dog_name, dog_image FROM dogs ORDER by dog_name ASC

    // // this one work!!!
    // $dogs = Dog::select('id', 'dog_name', 'dog_image', 'sex', 'location', 'price')->orderBy('dog_name','ASC')->get();

    // this one work!!!
    // $dogs = Dog::join('pets','pets.id','=','dogs.pet_id')->select('dogs.id','dogs.dog_name','pets.breed','dogs.dog_image','dogs.sex','dogs.location','dogs.price')->orderBy('dogs.dog_name','ASC')->get();

    return response()->json($dogs);
}

public function getOne($id) {
        $dogs = Dog::join('pets', 'pets.dog_id', '=', 'dogs.id')->select('pets.id', 'breed', 'dog_name', 'pet_image', 'sex', 'location', 'price', 'dogs.updates_at')->where('dogs.id', '=', $id)->get();

        return response()->json($dogs);

}

public function save(Request $request) {
// first Request is about the TYPE. The second request is a object. Write content into the table.
}

public function update(Request $request, $id) {

}

public function delete($id) {

}
    
}
