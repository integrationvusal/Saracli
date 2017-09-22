@extends('layouts.main')

@section('title', $title )

@section('content')

    @include('header_inside')


    <section id="single">
        <div class="container">
            <h1>{{ $title }}</h1>
            <div class="row">
                <div class="col-sm-12">
                    {!! $content !!}
                </div>
            </div>
        </div>
    </section>
@endsection