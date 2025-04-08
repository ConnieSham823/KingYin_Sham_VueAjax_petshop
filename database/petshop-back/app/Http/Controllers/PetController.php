<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Pet;


class PetController extends Controller {
    /**
     * Create a new controller instance.
     *
     * @return void
     */

public function getAll() {

    // $pets = Pet::all();

    // Select all from pets and order by breed. WORK! 
    $pets = Pet::select('id', 'breed', 'dog_id','pet_image','character_1','character_2', 'created_at', 'updates_at')->orderBy('breed','ASC')->get();
        return response()->json($pets);
}

public function getOne($id) {
    $pets = Pet::join('dogs', 'pets.dog_id', '=', 'dogs.id')->select('pets.id', 'breed', 'pet_image', 'dog_name', 'dog_image', 'sex', 'location', 'price', 'pets.created_at')->where('pets.id', '=', $id)->get();
        return response()->json($pets);
}

public function save(Request $request) {
// first Request is about the TYPE. The second request is a object. Write content into the table.
}

public function update(Request $request, $id) {

}

public function delete($id) {

}
    
}
