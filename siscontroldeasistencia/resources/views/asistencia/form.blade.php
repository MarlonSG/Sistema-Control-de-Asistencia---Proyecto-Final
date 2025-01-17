<div class="row padding-1 p-1">
    <div class="col-md-12">

        <div class="form-group mb-2 mb20">
            <label for="fecha" class="form-label">{{ __('Fecha') }}</label>
            <input type="date" name="fecha" class="form-control @error('fecha') is-invalid @enderror" value="{{ old('fecha', $asistencia?->fecha) }}" id="fecha" placeholder="Fecha">
            {!! $errors->first('fecha', '<div class="invalid-feedback" role="alert"><strong>:message</strong></div>') !!}
        </div>
        <div class="form-group mb-2 mb20">
            <label for="miembro_id" class="form-label">Miembro</label>
            <select name="miembro_id" class="form-control">
                @foreach($miembros as $id => $nombre)
                    <option value="{{ $id }}" {{ $asistencia->miembro_id == $id ? 'selected' : '' }}>{{ $nombre }}</option>
                @endforeach
            </select>
            {!! $errors->first('miembro_id', '<div class="invalid-feedback" role="alert"><strong>:message</strong></div>') !!}
        </div>

    </div>
    <div class="col-md-12 mt20 mt-2">
        <a class="btn btn-danger btn-sm" href="{{ route('asistencias.index') }}">Regresar</a>
        <button type="submit" class="btn btn-primary">Registrar Asistencia</button>
    </div>
</div>
