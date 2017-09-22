<?php

namespace App\Http\Controllers;

//use Illuminate\Http\Request;
use App\Article;
use App\Menu;
use App\Phonebook;
use App\Personalities;
use App\Gallery;

class SiteController extends Controller
{
	
	public function home(){
		return view('home',['title'=>'Ana səhifə', 'galleries'=>Gallery::all()]);
	}

	public function category($slug){
		$data = Article::getContent($slug);

		if(!$data)	abort(404);

		return view('category', ['title'=>$data[0]['text'],  'content'=>$data[1]['text'] ]);
	}

	public function personalities($slug){
		$data = Menu::getContent($slug);

		if(!$data)	abort(404);

		return view('personalities', ['title'=>$data['text'], 'personalities'=>Personalities::all() ]);
	}

	public function gallery($slug){
		$data = Menu::getContent($slug);

		if(!$data)	abort(404);

		return view('gallery', ['title'=>$data['text'], 'galleries'=>Gallery::all() ]);
	}

	public function phonebook($slug){

		if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['_token'])){

			if(Phonebook::add($_POST)) 
				flash('Məlumatlar uğurla telefon kitabçasına əlavə olundu!')->success();
			else 
				flash('Bu cür şəxs artıq telefon kitabçasında mövcuddur!')->error();

			return redirect()->refresh();

		}else{
			$data = Menu::getContent($slug);

			if(!$data)	abort(404);

			return view('phonebook', ['title'=>$data['text'], 'persons'=>Phonebook::all() ]);
		}

	}

	public function error(){
		return view('error');
	}
}
