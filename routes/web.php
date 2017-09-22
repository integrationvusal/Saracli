<?php

Route::get('/category/{slug}', 'SiteController@category')->name('category');
Route::get('/gallery/{slug}', 'SiteController@gallery')->name('gallery');
Route::match(['get', 'post'], '/phonebook/{slug}', 'SiteController@phonebook')->name('phonebook');
Route::get('/personalities/{slug}', 'SiteController@personalities')->name('personalities');
Route::get('/', 'SiteController@home')->name('home');


