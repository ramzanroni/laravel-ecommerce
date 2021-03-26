@extends('store.storeLayout')
@section('content')
   <div class="container">
    <div class="col-md-7 d-flex justify-content-center">
        @foreach ($userinfo as $item)
        <form method="POST" action="{{route('updatedata', $item->id)}}">
        @csrf
        @method('PUT')
        <div class="form-group">
            <label>User Name</label>
            <input type="text" name="name" value="{{$item->full_name}}" class="form-control">
        </div>
        <div class="form-group">
            <label>Email Address</label>
            <input type="email" name="email" value="{{$item->email}}" class="form-control">
        </div>
        <div class="form-group">
            <label>Phone Number</label>
            <input type="number" name="phone" value="{{$item->phone}}" class="form-control">
        </div>
    
    @endforeach

    @foreach ($add as $data)
    <div class="form-group">
        <label>Address</label>
        <input type="text" name="address" value="{{$data->area}}" class="form-control">
    </div>
    <div class="form-group">
        <label>City</label>
        <input type="text" name="city" value="{{$data->city}}" class="form-control">
    </div>
    <div class="form-group">
        <label>ZIP Code</label>
        <input type="text" name="zip" value="{{$data->zip}}" class="form-control">
    </div>
    <button type="submit" class="btn btn-success">Submit</button>
    @endforeach
</form> 
    </div>
   </div>
@endsection