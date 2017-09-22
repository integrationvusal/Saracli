@extends('layouts.main')

@section('title', $title)

@section('content')
    <section id="slide">

        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="{{asset('/public/images/slide1.jpg')}}" alt="...">
                    <div class="carousel-caption">
                    ...
                    </div>
                </div>
                <div class="item">
                    <img src="{{asset('/public/images/slide2.jpg')}}" alt="...">
                    <div class="carousel-caption">
                    ...
                    </div>
                </div>
                <div class="item">
                    <img src="{{asset('/public/images/slide3.jpg')}}" alt="...">
                    <div class="carousel-caption">
                    ...
                    </div>
                </div>
                <div class="item">
                    <img src="{{asset('/public/images/slide4.jpg')}}" alt="...">
                    <div class="carousel-caption">
                    ...
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section>
        <div class="container">
            <div class="col-sm-4">
                <div class="banner">
                    <a href="{{ route('category', 'saracli-kend-haqqinda') }}" class="banner_title">
                        Kənd<br>haqqında
                    </a>
                    <img src="{{asset('/public/images/icon1.png')}}" alt="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="banner">
                    <a href="{{ route('phonebook', 'saracli-telefon-kitabchasi') }}" class="banner_title">
                        Telefon<br>kitabçası
                    </a>
                    <img src="{{asset('/public/images/icon2.png')}}" alt="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="banner">
                    <a href="{{ route('personalities', 'saracli-gorkemli-shexsiyyetleri') }}" class="banner_title">
                        Görkəmli<br>şəxsiyyətləri
                    </a>
                    <img src="{{asset('/public/images/icon3.png')}}" alt="">
                </div>
            </div>
        </div>
    </section>


    <section id="about-saracli">
        <h2><span>SARACLINI TANIYAQ</span></h2>
        <div class="container">
            <div class="col-sm-4">
                <a href="{{ route('category', 'saracli-tarixi-ve-ehalisi') }}">
                    <article>
                        <div class="circle-img1"></div>
                        <h3>Tarixi və əhalisi</h3>
                    </article>
                </a>
            </div>
            <div class="col-sm-4">
                <a href="{{ route('category', 'saracli-fiziki-coghrafi-movqeyi') }}">
                    <article>
                        <div class="circle-img2"></div>
                        <h3>Fiziki-coğrafi mövqeyi</h3>
                    </article>
                </a>
            </div>
            <div class="col-sm-4">
                <a href="{{ route('category', 'saracli-kend-haqqinda-sheirler-ve-revayetler') }}">
                    <article>
                        <div class="circle-img3"></div>
                        <h3>Kənd haqqında şeirlər və rəvayətlər</h3>
                    </article>
                </a>
            </div>
            <div class="col-sm-4">
                <a href="{{ route('category', 'saracli-video-goruntuler') }}">
                    <article>
                        <div class="circle-img4"></div>
                        <h3>Video görüntülər</h3>
                    </article>
                </a>
            </div>
            <div class="col-sm-4">
                <a href="{{ route('category', 'saracli-ashiq-havalari') }}">
                    <article>
                        <div class="circle-img5"></div>
                        <h3>Aşıq havaları</h3>
                    </article>
                </a>
            </div>
            <div class="col-sm-4">
                <a href="{{ route('category', 'saracli-mezeli-ehvalatlar') }}">
                    <article>
                        <div class="circle-img6"></div>
                        <h3>Məzəli əhvalatlar</h3>
                    </article>
                </a>
            </div>
        </div>

    </section>

    <section id="photo-albom">
        <h2><span>FOTOALBOM</span></h2>
        
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

    </section>

@endsection