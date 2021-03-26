@extends('admin_panel.adminLayout')

@section('content')
<div class="content-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <div class="col-lg-3 p-2 m-4 btn btn-danger">
                <p class="h2 text-white">Total Orders</p>
                <p class="h4">{{$orders}}</p>
            </div>
            <div class="col-lg-3 p-2 m-4 btn btn-info">
                <p class="h2 text-white">Total Sales</p>
                <p class="h4">{{$total}}</p>
            </div>
            <div class="col-lg-3 p-2 m-4 btn btn-success">
                <p class="h2 ">Total Customer</p>
                <p class="h4">{{$users}}</p>
            </div>
            
        </div>
        <div class="col-lg-12 grid-margin">
           <p class="h1 bg-warning text-center">Order Status</p>
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Orders</h4>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>
                                       Order ID
                                    </th>
                                    <th>
                                       Time
                                    </th>
                                    <th>
                                        Status
                                    </th>
                                    <th>
                                        Amount
                                    </th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($sales as $s)

                                <tr>
                                    <td class="font-weight-medium">
                                        {{$s->id}}
                                    </td>
                                    <td class="font-weight-medium">
                                        {{$s->created_at}}
                                    </td>
                                    @if ($s->order_status=='Delivered')
                                    <td class="font-weight-medium btn btn-success">
                                        {{$s->order_status}}
                                    </td>
                                    @endif
                                   
                                    @if ($s->order_status=='On Process')
                                    <td class="font-weight-medium btn btn-warning">
                                        {{$s->order_status}}
                                    </td>
                                    @endif
                                    @if ($s->order_status=='Cancel')
                                    <td class="font-weight-medium btn btn-danger">
                                        {{$s->order_status}}
                                    </td>
                                    @endif
                                    @if ($s->order_status=='Placed')
                                    <td class="font-weight-medium btn btn-info">
                                        {{$s->order_status}}
                                    </td>
                                    @endif
                                    
                                    
                                    <td class="font-weight-medium">
                                        {{$s->price}}
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
<script>
    Promise.all([
  loadData(
    "https://s3.eu-central-1.amazonaws.com/fusion.store/ft/data/plotting-multiple-series-on-time-axis-data.json"
  ),
  loadData(
    "https://s3.eu-central-1.amazonaws.com/fusion.store/ft/schema/plotting-multiple-series-on-time-axis-schema.json"
  )
]).then(function(res) {
  const data = res[0];
  const schema = res[1];

  const dataStore = new FusionCharts.DataStore();
  const dataSource = {
    chart: {},
    caption: {
      text: "Sales Analysis"
    },
    subcaption: {
      text: "Grocery & Footwear"
    },
    series: "Type",
    yaxis: [
      {
        plot: "Sales Value",
        title: "Sale Value",
        format: {
          prefix: "$"
        }
      }
    ]
  };
  dataSource.data = dataStore.createDataTable(data, schema);

  new FusionCharts({
    type: "timeseries",
    renderAt: "chart-container",
    width: "100%",
    height: "500",
    dataSource: dataSource
  }).render();
});
</script>