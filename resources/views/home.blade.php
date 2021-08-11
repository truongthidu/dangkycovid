@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Thông tin lịch tiêm</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    @if(count($lichtiem) == 0)
                        <div class="mb-4" style="color: red;">Bạn chưa đăng ký lịch tiêm</div>
                        

                        <form method="post" action="{{ route('dangkytiem') }}">
                            {{ csrf_field() }}
                            <div class="form-row">
                              <div class="form-group col-md-12">
                                <label for="noitiem">Nơi tiêm</label>
                                <select id="noitiem" name="noitiem" class="form-control">
                                  @foreach($noitiem as $t)
                                    <option value="{{ $t->id }}">{{ $t->name }}</option>
                                  @endforeach
                                </select>
                              </div>
                              <div class="form-group col-md-12">
                                <label for="ngaytiem">Ngày tiêm</label>
                                <select id="ngaytiem" name="ngaytiem" class="form-control">
                                  @foreach($ngaytiem as $t)
                                    <option value="{{ $t->id }}">{{ $t->date }}</option>
                                  @endforeach
                                </select>
                              </div>
                              <div class="form-group col-md-12">
                                <label for="doituong">Đối tượng ưu tiên</label>
                                <select id="doituong" name="doituong"  class="form-control">
                                  @foreach($doituong as $t)
                                    <option value="{{ $t->id }}">{{ $t->name }}</option>
                                  @endforeach
                                </select>
                              </div>
                          </form>
                        <button type="submit" class="btn btn-primary text-white">Đăng ký lịch tiêm</button>
                    @else
                        Họ tên người tiêm: {{ Auth::user()->name }}<br>
                        Ngày tiêm: {{ $ngaytiem[$lichtiem[0]->ngaytiemid]->date}}<br>
                        Nơi tiêm: {{ $noitiem[$lichtiem[0]->noitiemid]->name }}<br>
                        Đối tượng: {{ $doituong[$lichtiem[0]->doituonguutienid]->name }}<br>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
