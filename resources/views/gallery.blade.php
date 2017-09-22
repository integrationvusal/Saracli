@extends('layouts.main')

@section('title', $title )

@section('content')

    @include('header_inside')

    <section id="single">
        <div class="container">
            <h1>{{ $title }}</h1>
            <div class="row">
                <div class="col-sm-12">
                
                    <div id="gallery" style="display:none;">
                        @foreach ($galleries as $name=>$gallery)
                            @foreach ($gallery as $gall)
                                <a href="">
                                    <img alt="{{ Helper::filename($gall) }}"
                                        src="{{asset('/public/upload/albums/'.$name.'/'.$gall)}}"
                                        data-image="{{asset('/public/upload/albums/'.$name.'/'.$gall)}}"
                                        style="display:none">
                                </a>
                            @endforeach
                        @endforeach
                    </div>

                </div>
            </div>
        </div>
    </section>

@endsection