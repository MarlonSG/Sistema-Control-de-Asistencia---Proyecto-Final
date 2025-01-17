@extends('layouts.admin')

@section('content')
    <div class="content" style="margin-left: 20px">
        <h1>Creacion de un Nuevo Ministerio</h1><br>


        @foreach($errors->all() as $error)
            <div class="alert alert-danger">
                <li>{{$error}}</li>
            </div>
        @endforeach


        <div class="row">
            <div class="col-md-11">
                <div class="card card-outline card-primary">
                    <div class="card-header">
                        <h3 class="card-title"><b>Ingrese los Datos del Nuevo Ministerio</b></h3>

                    </div>
                    <div class="card-body" style="display: block;">
                        <form action="{{url('/ministerios')}}" method="post">
                            <div class="row">
                                @csrf
                                <div class="col-md-12">
                                    <div class="row">


                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <label for="">Nombres del Ministerio</label><b>*</b>
                                                <input type="text" name="nombre_ministerio" value="{{old('nombre_ministerio')}}" class="form-control" required>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="">Fecha de Ingreso</label><b>*</b>
                                                <input type="date" name="fecha_ingreso" value="{{old('fecha_ingreso')}}" class="form-control" required>
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="">Descripcion</label>
                                                <textarea class="form-control" name="descripcion" id="" cols="" rows="10"></textarea>
                                                <script>
                                                    CKEDITOR.replace('descripcion');
                                                </script>
                                            </div>
                                        </div>


                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <a href="{{url('ministerios')}}" class="btn btn-danger">Cancelar</a>
                                        <button type="submit" class="btn btn-primary"> Guardar Registro </button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
