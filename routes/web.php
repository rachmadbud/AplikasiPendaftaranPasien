<?php

use App\Http\Controllers\PasienController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

// wajib login di dalem middleware auth
Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');


    Route::get('/pasien', [PasienController::class, 'getDataPasien'])
        ->name('getDataPasien');
    Route::post('/postDataPasien', [PasienController::class, 'postDataPasien'])
        ->name('postDataPasien');

    Route::get('/formEditPasien/{id}', [PasienController::class, 'formEditPasien'])
        ->name('formEditPasien');

    // update nya apa 
    // :patch -> update seluruh data
    // :put -> beberapa data
    Route::put('/update/{id}', [PasienController::class, 'update'])
        ->name('update');
    // gitu gak?

    Route::delete('/delete/{id}', [PasienController::class, 'delete'])
        ->name('delete');

    // buat sendiri
    // iya sayang
});


// kalo di luar auth ggk wajib login

require __DIR__ . '/auth.php';

// gak bisa di undo tah?
// ke replace kayaknya, gabisa di ctrl z
// cuma route doang yang ilang ya?
// yowes lah
