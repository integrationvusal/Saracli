@extends('layouts.main')

@section('title', $title )

@section('content')

    @include('header_inside')


    <section id="phone">
        <div class="container">
            <h1>{{ $title }}</h1>
            <div class="row">
                @include('flash::message')
                <form class="form-horizontal" method="post" action="{{ url()->current() }}">
                    {{ csrf_field() }}
                    <button type="button" class="btn btn-primary btn-lg btn-block" data-toggle="collapse" data-target="#collapseExampleClients" aria-expanded="false" aria-controls="collapseExample">MƏLUMATI DAXİL EDİN</button>

                    <div class="collapse" id="collapseExampleClients">
                        <div class="col-sm-6 col-md-6">
                            <div class="form-group">
                                <label for="" class="col-sm-3 control-label">Soyadı:</label>
                                <div class="col-sm-9">
                                    <input type="text" required name="user_surname" class="form-control" id="" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-sm-3 control-label">Adı:</label>
                                <div class="col-sm-9">
                                    <input type="text" required name="user_name" class="form-control" id="" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-sm-3 control-label">Atasının adı:</label>
                                <div class="col-sm-9">
                                    <input type="text" required name="user_patronymic" class="form-control" id="" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-sm-3 control-label">Ünvanı:</label>
                                <div class="col-sm-9">
                                    <input type="text" required name="user_address" class="form-control" id="" placeholder="">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-6">
                            <div class="form-group">
                                <label for="" class="col-sm-3 control-label">Telefon:</label>
                                <div class="col-sm-3">
                                    <select class="form-control" name="phone_format[]">
                                        <option value="(012)">(012)</option>
                                        <option value="(050)">(050)</option>
                                        <option value="(051)">(051)</option>
                                        <option value="(055)">(055)</option>
                                        <option value="(070)">(070)</option>
                                        <option value="(077)">(077)</option>
                                    </select>
                                </div>
                                <div class="col-sm-4">
                                    <input type="tel" required pattern="[0-9]{3} [0-9]{2} [0-9]{2}" placeholder="444 44 44" name="phone_number[]" class="form-control m5" id="" placeholder="">
                                </div>
                                <div class="col-sm-2">
                                    <button type="button" class="btn btn-primary btn-block plus-sign"><span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span></button>
                                </div>
                            </div>

                            <div class="after_phone">

                            </div>

                            <div class="tmp" style="display:none;">
                                <div class="form-group">
                                    <label for="" class="col-sm-3 control-label">Telefon:</label>
                                    <div class="col-sm-3">
                                        <select class="form-control" name="phone_format[]">
                                            <option value="(012)">(012)</option>
                                            <option value="(050)">(050)</option>
                                            <option value="(051)">(051)</option>
                                            <option value="(055)">(055)</option>
                                            <option value="(070)">(070)</option>
                                            <option value="(077)">(077)</option>
                                        </select>
                                    </div>
                                    <div class="col-sm-4">
                                        <input type="tel" pattern="[0-9]{3} [0-9]{2} [0-9]{2}" placeholder="444 44 44" name="phone_number[]" class="form-control m5" id="" placeholder="">
                                    </div>
                                    <div class="col-sm-2">
                                        <button type="button" class="btn btn-primary btn-block minus-sign"><span class="glyphicon glyphicon-minus-sign" aria-hidden="true"></span></button>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-sm-3 control-label">E-mail:</label>
                                <div class="col-sm-9">
                                    <input type="email" name="user_email" class="form-control" id="" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-sm-3 control-label">Web-site:</label>
                                <div class="col-sm-9">
                                    <input type="url" placeholder="http://example.com" name="user_website" class="form-control" id="" placeholder="">
                                </div>
                            </div>
                            <button type="submit" class="btn btn-danger pull-right"><span>ƏLAVƏ ET</span></button>
                        </div>
                    </div>
                </form>

                <div class="col-sm-12 col-md-12 col-no-gutter">
                    <h3>Şəxslərin siyahısı</h3>
                    <div class="table-responsive">
                        <table class="table table-condensed">
                            <tr>
                                <th>#</th>
                                <th>Adı, soyadı, atasının adı</th>
                                <th>Ünvanı</th>
                                <th>Telefonu</th>
                                <th>E-mail</th>
                                <th>Web-site</th>
                            </tr>
                            @foreach ($persons as $person)
                                <tr>
                                   <td>{{ $loop->iteration }}</td>
                                    <td>{{ $person['surname'] }} {{ $person['name'] }} {{ $person['patronymic'] }}</td>
                                    <td>{{ $person['address'] }} </td>
                                    <td>
                                       @foreach ( json_decode($person['phones']) as $phone) {{ $phone }}<br/>  @endforeach
                                    </td>
                                    <td>{{ $person['email'] }}</td>
                                    <td>{{ $person['website'] }}</td>
                                </tr>
                            @endforeach
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </section>

@endsection