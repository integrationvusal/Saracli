@extends('layouts.main')

@section('title', 'Səhifə mövcud deyil')

@section('content')
    <section id="header-inside"></section>

    <section id="single">
        <div class="container">
            <h1>Səhifə mövcud deyil</h1>
            <div class="row">
                <div class="col-sm-12">
                    <img class="center-block" src="{{asset('/public/images/404.jpg')}}"/>
                </div>
            </div>
        </div>
    </section>
@endsection