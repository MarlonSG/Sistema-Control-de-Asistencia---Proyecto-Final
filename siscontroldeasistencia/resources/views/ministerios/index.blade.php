@extends('layouts.admin')

@section('content')
    <div class="content" style="margin-left: 20px">
        <h1>Lista de Ministerios</h1><br>


        @if($message = Session::get('mensaje'))
            <script>
                Swal.fire({
                    title: "Buen Trabajo",
                    text: "{{$message}}",
                    icon: "success"
                });
            </script>
        @endif


        <div class="row">
            <div class="col-md-12">
                <div class="card card-outline card-primary">
                    <div class="card-header">
                        <h3 class="card-title"><b>Ministerios Registrados</b></h3>

                        <div class="card-tools">
                            <a href="{{url('/ministerios/create')}}" class="btn btn-primary">
                                <i class="bi bi-person-fill-add"></i> Agregar Nuevo Ministerio
                            </a>

                        </div>

                    </div>

                    <div class="card-body" style="display: block;">
                        <table id="example1" class="table table-bordered table-striped" >
                            <thead>
                            <tr>
                                <th>Nro</th>
                                <th>Nombres del Ministerio</th>
                                <th>Descripcion</th>
                                <th>Estado</th>
                                <th>Fecha de Ingreso</th>
                                <th>Accion</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php $contador = 0?>
                            @foreach($ministerios as $ministerio)
                                <tr>
                                    <td><?php echo $contador = $contador + 1 ; ?></td>
                                    <td>{{$ministerio->nombre_ministerio}}</td>
                                    <td>{!!$ministerio->descripcion  !!}</td>
                                    <td style="text-align: center">
                                        <button class="btn btn-success btn-sm" style="border-radius: 10px">Activo</button>
                                    </td>
                                    <td>{{$ministerio->fecha_ingreso}}</td>

                                    <td style="text-align: center;">
                                        <div class="btn-group" role="group" aria-label="Basic example">
                                            <a href="{{url('ministerios',$ministerio->id)}}" type="button" class="btn btn-info"><i class="bi bi-eye"></i></a>
                                            <a href="{{route('ministerios.edit',$ministerio->id)}}" type="button" class="btn btn-success"><i class="bi bi-pencil"></i></a>
                                            <form action="{{url('ministerios', $ministerio->id)}}" method="post">
                                                @csrf
                                                {{method_field('DELETE')}}
                                                <button onclick="return confirm('¿Estas seguro de eliminar este Registro?')" type="submit" class="btn btn-danger">
                                                    <i class="bi bi-trash"></i>
                                                </button>
                                            </form>
                                        </div>
                                    </td>
                                </tr>

                            @endforeach
                            </tbody>
                        </table>


                        <script>
                            $(function () {
                                $("#example1").DataTable({
                                    "pageLength": 10,
                                    "language": {
                                        "emptyTable": "No hay información",
                                        "info": "Mostrando _START_ a _END_ de _TOTAL_ Ministerios",
                                        "infoEmpty": "Mostrando 0 a 0 de 0 Ministerios",
                                        "infoFiltered": "(Filtrado de _MAX_ total Ministerios)",
                                        "infoPostFix": "",
                                        "thousands": ",",
                                        "lengthMenu": "Mostrar _MENU_ Ministerios",
                                        "loadingRecords": "Cargando...",
                                        "processing": "Procesando...",
                                        "search": "Buscador:",
                                        "zeroRecords": "Sin resultados encontrados",
                                        "paginate": {
                                            "first": "Primero",
                                            "last": "Ultimo",
                                            "next": "Siguiente",
                                            "previous": "Anterior"
                                        }
                                    },
                                    "responsive": true, "lengthChange": true, "autoWidth": false,
                                    buttons: [{
                                        extend: 'collection',
                                        text: 'Reportes',
                                        orientation: 'landscape',
                                        buttons: [{
                                            text: 'Copiar',
                                            extend: 'copy',
                                        }, {
                                            extend: 'pdf'
                                        },{
                                            extend: 'csv'
                                        },{
                                            extend: 'excel'
                                        },{
                                            text: 'Imprimir',
                                            extend: 'print'
                                        }
                                        ]
                                    },
                                        {
                                            extend: 'colvis',
                                            text: 'Visor de columnas',
                                            collectionLayout: 'fixed one-column'
                                        }
                                    ],
                                }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
                            });
                        </script>

                    </div>

                </div>

            </div>
        </div>
    </div>
@endsection
