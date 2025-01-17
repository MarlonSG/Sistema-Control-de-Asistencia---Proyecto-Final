@extends('layouts.admin')

@section('content')
    <div class="content" style="margin-left: 20px">
        <h1>Actualizacion de Datos del Miembro</h1><br>


        @foreach($errors->all() as $error)
            <div class="alert alert-danger">
                <li>{{$error}}</li>
            </div>
        @endforeach


        <div class="row">
            <div class="col-md-11">
                <div class="card card-outline card-success">
                    <div class="card-header">
                        <h3 class="card-title"><b>Datos del Miembro</b></h3>

                    </div>
                    <div class="card-body" style="display: block;">
                        <form action="{{url('/miembros',$miembro->id)}}" method="post" enctype="multipart/form-data">
                            <div class="row">

                                @csrf
                                {{method_field('PATCH')}}

                                <div class="col-md-9">
                                    <div class="row">


                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="">Nombres y Apellidos</label><b>*</b>
                                                <input type="text" name="nombre_apellido" value="{{$miembro->nombre_apellido}}" class="form-control" required>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="">Email</label><b>*</b>
                                                <input type="email" name="email" value="{{$miembro->email}}" class="form-control" required>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="">Telefono</label><b>*</b>
                                                <input type="number" name="telefono" value="{{$miembro->telefono}}" class="form-control" required>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="">Fecha de Nacimiento</label><b>*</b>
                                                <input type="date" name="fecha_nacimiento" value="{{$miembro->fecha_nacimiento}}" class="form-control" required>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="">Genero</label>
                                                <select name="genero" class="form-control" id="" >

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
                                                <label for="">Ministerio</label><b>*</b>
                                                <input type="text" name="ministerio" value="{{$miembro->ministerio}}" class="form-control" required>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="">Direccion</label><b>*</b>
                                                <input type="text" name="direccion" value="{{$miembro->direccion}}" class="form-control" required>
                                            </div>
                                        </div>


                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="">Fotografia</label>
                                        <input type="file" id="file" name="fotografia" class="form-control"><br>
                                        <center>
                                            <output id="list">
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
                                            </output>
                                        </center>
                                        <script>
                                            function archivo(evt){
                                                var files = evt.target.files;
                                                //obtenemos la imagen del campo "file".
                                                for (var i=0, f; f = files[i]; i++){
                                                    //solo admitimos imagenes.
                                                    if (!f.type.match('image.*')){
                                                        continue;
                                                    }
                                                    var reader = new FileReader();
                                                    reader.onload = (function (theFile){
                                                        return function (e){
                                                            //insertamos la imagen
                                                            document.getElementById("list").innerHTML = ['<img class="thumb thumbnail" src="',e.target.result,'"width="50%" title="', escape(theFile.name),'"/>'].join('');
                                                        };
                                                    }) (f);
                                                    reader.readAsDataURL(f);
                                                }

                                            }
                                            document.getElementById('file').addEventListener('change',archivo, false);
                                        </script>
                                    </div>
                                </div>

                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <a href="{{url('miembros')}}" class="btn btn-danger">Cancelar</a>
                                        <button type="submit" class="btn btn-success"> Actualizar Datos </button>
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
