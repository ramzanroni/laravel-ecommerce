@extends('store.storeLayout')
@section('content')

<section>
    <div class="container">
        <div class="col-md-12">
            @foreach ($userinfo as $item)
                <div class="col-md-5">
                    <img src="{{asset('images/faces/face1.jpg')}}">
                </div>
                <div class="col-md-7">
                    <p>Username:</p>
                    <p class="bg-info p-2">{{$item->full_name}}</p>
                    <p>Email Address</p>
                    <p class="bg-info p-2">{{$item->email}}</p>
                    <p>Phone Number</p>
                    <p class="bg-info p-2">{{$item->phone}}</p>
                   
                
            @endforeach
           @foreach ($add as $address)
           <p>Address</p>
           <p class="bg-info p-2">{{$address->area}}</p>
           <p>City</p>
           <p class="bg-info p-2">{{$address->city}}</p>
        <p>Zipcode</p>
        <p class="bg-info p-2">{{$address->zip}}</p>
           <a href="{{route('update', $item->id)}}" class="btn btn-primary p-3 mt-5">Update Profile</a>
           @endforeach
        </div>
        </div>
    </div>
</section>
@endsection


