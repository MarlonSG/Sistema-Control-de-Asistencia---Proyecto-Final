@extends('layouts.admin')

@section('content')
    <div class="content" style="margin-left: 20px">
        <h1>Datos del Miembro Registrado</h1><br>



        <div class="row">
            <div class="col-md-11">
                <div class="card card-outline card-primary">
                    <div class="card-header">
                        <h3 class="card-title"><b>Datos Registrados</b></h3>

                    </div>
                    <div class="card-body" style="display: block;">

                            <div class="row">
                                <div class="col-md-9">
                                    <div class="row">


                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="">Nombres y Apellidos</label>
                                                <input type="text" name="nombre_apellido" value="{{$miembro->nombre_apellido}}" class="form-control" disabled>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="">Email</label>
                                                <input type="email" name="email" value="{{$miembro->email}}" class="form-control" disabled>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="">Telefono</label>
                                                <input type="number" name="telefono" value="{{$miembro->telefono}}" class="form-control" disabled>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="">Fecha de Nacimiento</label>
                                                <input type="date" name="fecha_nacimiento" value="{{$miembro->fecha_nacimiento}}" class="form-control" disabled>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="">Genero</label>
                                                <select name="genero" class="form-control" id="" disabled>

                                                    @if($miembro->genero == 'MASCULINO')
                                                        <option value="MASCULINO">MASCULINO</option>
                                                        <option value="FEMENINO">FEMENINO</option>
                                                    @else
                                                        <option value="FEMENINO">FEMENINO</option>
                                                        <option value="MASCULINO">MASCULINO</option>
                                                    @endif

                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="">Ministerio</label>
                                                <input type="text" name="ministerio" value="{{$miembro->ministerio}}" class="form-control" disabled>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="">Direccion</label>
                                                <input type="text" name="direccion" value="{{$miembro->direccion}}" class="form-control" disabled>
                                            </div>
                                        </div>


                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="">Fotografia</label>

                                        @if($miembro->fotografia == '')
                                            @if($miembro->genero == 'MASCULINO')
                                                <img src="{{url('images/avatar_hombre.jpg')}}" width="200px" alt="">
                                            @else
                                                <img src="{{url('images/avatar_mujer.jpg')}}" width="200px" alt="">
                                            @endif
                                        @else
                                            <center>
                                                <img src="{{url('storage').'/'.$miembro->fotografia}}" width="200px" alt="">
                                            </center>
                                        @endif

                                    </div>
                                </div>

                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <a href="{{url('miembros')}}" class="btn btn-danger">Regresar</a>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
