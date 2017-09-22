@extends('layouts.main')

@section('title', $title )

@section('content')

    @include('header_inside')

    <section id="personal">     
        <div class="container">
            <h1>{{ $title }}</h1>
            <div class="row">
                <div class="col col-sm-4">
                    <ul class="nav nav-tabs nav-stacked text-center" role="tablist">
                        @foreach ($personalities as $person)
                            <li role="presentation" @if($loop->first) class="active" @endif><a href="#p{{$loop->iteration}}" aria-controls="home" role="tab" data-toggle="tab">{{$person['title']}}</a></li>
                        @endforeach
                    </ul>
                </div>
                <div class="col col-sm-8">
                    <div class="row tab-content">
                        @foreach ($personalities as $person)
                            <div role="tabpanel" class="tab-pane fade @if($loop->first) active in @endif" id="p{{$loop->iteration}}">
                                <table>
                                    <tr>
                                        <td><img src="{{asset('/public/images/p0'.$loop->iteration.'.jpg')}}" alt=""></td>
                                        <td>
                                            <p><span><b>Tam adı:</b></span><span>{{ $person['fio'] }}</span></p>
                                            <p><span><b>Doğum tarixi:</b></span><span>{{ $person['birth'] }}</span></p>
                                            <p><span><b>Ölüm tarixi: </b></span><span>{{ $person['deadth'] }}</span></p>
                                        </td>
                                    </tr>
                                </table>
                                <hr>                            
                               {!! $person['content'] !!}
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
            <div class="row">
                <ul class="list-inline pull-right">
                    <li><button type="button" class="btn btn-default prev-step"><i class="fa fa-arrow-left" aria-hidden="true"></i></button></li>
                    <li><button type="button" class="btn btn-default next-step"><i class="fa fa-arrow-right" aria-hidden="true"></i></button></li>
                </ul>                
            </div>
        </div>
    </section>  

@endsection