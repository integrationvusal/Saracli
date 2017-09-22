<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Saracli - @yield('title')</title>

    <link href="{{asset('/public/css/bootstrap.css')}}" rel="stylesheet" />
    <link href="{{asset('/public/css/font-awesome.min.css')}}" rel="stylesheet" />
    <link href="{{asset('/public/css/style.css')}}" rel="stylesheet" />
    <link rel='stylesheet' href="{{asset('/public/css/unite-gallery.css')}}" type='text/css' />

    <script type='text/javascript' src="{{asset('/public/js/less.js')}}"></script>

</head>

<body>
    <header>
        <div class="logo">
            <a href=""><img src="{{asset('/public/images/logo.png')}}" alt=""></a>
            <h3>Borçalı-Saraclı</h3>
        </div>

        <nav class="navbar navbar-default" id="menu">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    @widget('MenuWidget')
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    </header>

    @yield('content')

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <a href=""><img src="{{asset('/public/images/logo.png')}}" alt=""></a>
                    <div class="socials">
                        <a target="_blank" href="{{ $settings['facebook'] }}" class="fa fa-facebook"></a>
                        <a target="_blank" href="{{ $settings['twitter'] }}" class="fa fa-twitter"></a>
                        <a target="_blank" href="{{ $settings['google_plus'] }}" class="fa fa-google-plus"></a>
                    </div>
                    {!! $settings['footer_text'] !!}
                </div>
            </div>
        </div>
    </footer>

    <script src="{{asset('/public/js/jquery-3.1.1.min.js')}}"></script>
    <script src="{{asset('/public/js/bootstrap.min.js')}}"></script>

    <script src="{{asset('/public/js/saracli.js')}}"></script>

    <script type='text/javascript' src="{{asset('/public/js/unitegallery.min.js')}}"></script>
    <script type='text/javascript' src="{{asset('/public/js/ug-theme-tiles.js')}}"></script>

    <script type="text/javascript">
        jQuery(document).ready(function(){

            if(jQuery("#gallery").attr('id') != undefined){
               jQuery("#gallery").unitegallery({
                    tiles_type:"justified"
                });
            }

            if(jQuery("#flash-overlay-modal").attr('id') != undefined){
               jQuery('#flash-overlay-modal').modal();
            }

        });
    </script>

</body>

</html>