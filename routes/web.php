<?php


Route::resource('/painel/event','Painel\EventController');
Route::get('/painel','Painel\PainelController@home')->name('homeevent');



Route::get('/contato','Site\SiteController@contato');
Route::get('/','Site\SiteController@index');

?>