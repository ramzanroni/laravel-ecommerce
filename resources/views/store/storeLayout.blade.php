<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Manage Shop</title>

    <link rel="shortcut icon" href="{{asset('favicon.png')}}" />
    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}" />

    <!-- Slick -->
    <link type="text/css" rel="stylesheet" href="{{asset('css/slick.css')}}" />
    <link type="text/css" rel="stylesheet" href="{{asset('css/slick-theme.css')}}" />

    <!-- nouislider -->
    <link type="text/css" rel="stylesheet" href="{{asset('css/nouislider.min.css')}}" />

    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="{{asset('css/font-awesome.min.css')}}">

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="{{asset('css/style2.css')}}" />
    
    
    <style>
        @media only screen and (max-width: 767px){
            #head_links {
                visibility: hidden;
            }
            .custom_search_top {
                text-align:center;
            }

            .header-ctn {
                width: 100%;
            }
        }
        </style>

</head>

<body>
    <!-- HEADER -->
    <header>
        <!-- TOP HEADER -->
        <div id="top-header">
            <div class="container">
                <ul id="head_links" class="header-links pull-left">
                    <li><a href="#"><i class="fa fa-phone"></i> +01700000000</a></li>
                    <li><a href="#"><i class="fa fa-envelope-o"></i> hello@gmail.com</a></li>
                    <li><a href="#"><i class="fa fa-map-marker"></i> Shamim Saroni, Mirpur</a></li>
                </ul>
                <ul class="header-links pull-right">
                    @if(session()->has('user'))
                      {{-- <li><a style="color:white" href="{{route('user.history')}}">{{session()->get('user')->full_name}} </a></li>   --}}
                      <li>
                        <div class="dropdown">
                            <button class="btn btn-default dropdown-toggle " type="button" data-toggle="dropdown">{{session()->get('user')->full_name}}
                            <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                              <li><a  style="color: darkblue;" href="{{route('user.history')}}">Orders</a></li>
                              @php
                                    $id=session()->get('user')->id;
                                @endphp
                              <li class=""><a style="color: darkblue;" href="{{route('user.profile', $id)}}">Profile</a></li>

                                
                              
                            </ul>
                          </div>                          
                      </li>
                      <li><a href="{{route('user.logout')}}"><i class="fa fa-user-o"></i> Logout</a></li>
                    @else
                    <li><a href="{{route('user.login')}}"><i class="fa fa-user-o"></i> Login</a></li>
                    
                    <li><a href="{{route('user.signup')}}"><i class="fa fa-user-o"></i> SignUp</a></li>
                    @endif
                    
                </ul>
            </div>
        </div>
        <!-- /TOP HEADER -->

        <!-- MAIN HEADER -->
        <div id="header">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <!-- LOGO -->
                    <div class="col-md-3">
                        <div class="header-logo">
                            <a href="{{route('user.home')}}" class="logo">
                                <img src="{{asset('img/logo.png')}}" alt="">
                            </a>
                        </div>
                    </div>
                    <!-- /LOGO -->

                    <!-- SEARCH BAR -->
                    <div class="col-md-6">
                        <div class="header-search">
                            <form action="{{route('user.search')}}" method="get">
                                <div class="custom_search_top" >
                                    <input class="input" style="border-radius: 40px 0px 0px 40px;" name="n" placeholder="Search here">
                                    <button  class="search-btn">Search</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- /SEARCH BAR -->

                    <!-- ACCOUNT -->
                    <div class="col-md-3 clearfix">
                        <div class="header-ctn">
                            <!-- Cart -->
                            <div  class="dropdown">
                                <a class="dropdown-toggle btn btn-danger" id="custom_shopping_cart" href="{{route('user.cart')}}">
                                    <i class="fa fa-shopping-cart "></i>
                                    <span>Your Cart</span>
                                </a>

                            </div>
                            <!-- /Cart -->

                            <!-- Menu Toogle -->
                            <div class="menu-toggle pull-right">
                                <a href="#">
                                    <i class="fa fa-bars"></i>
                                    <span>Menu</span>
                                </a>
                            </div>
                            <!-- /Menu Toogle -->
                        </div>
                    </div>
                    <!-- /ACCOUNT -->
                </div>
                <!-- row -->
            </div>
            <!-- container -->
        </div>
        <!-- /MAIN HEADER -->
    </header>
    <!-- /HEADER -->

    <!-- NAVIGATION -->
    <nav id="navigation">
        <!-- container -->
        <div class="container">
            <!-- responsive-nav -->
            <div id="responsive-nav">
                <!-- NAV -->
                <ul class="main-nav nav navbar-nav">
                    <li class="{{Route::is('user.home') ? 'active' : ''}}"><a href="{{route('user.home')}}">Home</a></li>
                    @if(Route::is('user.search'))
                        @foreach($cat as $c)
                        <li class="{{$c->id == $a ? 'active' : ''}}"><a href="{{route('user.search.cat',['id'=>$c->id])}}" >{{$c->name}}</a></li>
                        @endforeach
                        <li class="{{$a == -1  ? 'active' : ''}}"><a href="search">Browse All</a></li>
                    @else
                        @foreach($cat as $c)
                        <li ><a href="{{route('user.search.cat',['id'=>$c->id])}}" >{{$c->name}}</a></li>
                        @endforeach
                        <li ><a href="{{route('user.search')}}">Browse All</a></li>
                    @endif
                    
                </ul>
                <!-- /NAV -->
            </div>
            <!-- /responsive-nav -->
        </div>
        <!-- /container -->
    </nav>
    <!-- /NAVIGATION -->

    <!-- SECTION -->
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            @if(Route::is('user.home'))
            <div class="row">
                <!-- shop -->
                @php
                $counter=0;
                @endphp
                @foreach($cat as $c)
                 @php
                $counter++;
                if($counter==4)
                break;
               
                @endphp
                <div class="col-md-4 col-xs-6">
                    <div class="shop">
                        <div class="shop-img">
                            <img src="./img/shop0{{$index++}}.png" alt="">
                        </div>
                        <div class="shop-body">
                            <h3>{{$c->name}}</h3>
                            <a href="search?c={{$c->id}}" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                </div>
                <!-- /shop -->
                @endforeach
            </div>
            @endif
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- SECTION -->


    @yield('content')

    <!-- /SECTION -->
    
    <div id="newsletter" class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <div class="col-md-12">
                    <div class="newsletter">
                        <p>Subscribe</p>
                        <form>
                            <input class="input" type="email" placeholder="Enter Your Email">
                            <button class="newsletter-btn"><i class="fa fa-envelope"></i> Subscribe</button>
                        </form>
                        <ul class="newsletter-follow">
                            <li>
                                <a href="#"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-pinterest"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /NEWSLETTER -->

    <!-- FOOTER -->
    <footer id="footer" >
        <!-- top footer -->
        <div class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row" >
                    <div class="col-md-3 col-xs-6" >
                        <div class="footer" >
                            <h3 class="footer-title">About Us</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                incididunt ut.</p>
                            <ul class="footer-links">
                                <li><a href="#"><i class="fa fa-map-marker"></i>Shamin Saroni, Mirpur</a></li>
                                <li><a href="#"><i class="fa fa-phone"></i>+8801700000000</a></li>
                                <li><a href="#"><i class="fa fa-envelope-o"></i>support@gmail.com</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-3 col-xs-6">
                        <div class="footer">
                            <h3 class="footer-title">Categories</h3>
                            <ul class="footer-links">
                                <li><a href="#">Hot deals</a></li>
                                <li><a href="#">Laptops</a></li>
                                <li><a href="#">Smartphones</a></li>
                                <li><a href="#">Cameras</a></li>
                                <li><a href="#">Accessories</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="clearfix visible-xs"></div>

                    <div class="col-md-3 col-xs-6">
                        <div class="footer">
                            <h3 class="footer-title">Information</h3>
                            <ul class="footer-links">
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Contact Us</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">Orders and Returns</a></li>
                                <li><a href="#">Terms & Conditions</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-3 col-xs-6">
                        <div class="footer">
                            <h3 class="footer-title">Service</h3>
                            <ul class="footer-links">
                                <li><a href="#">My Account</a></li>
                                <li><a href="#">View Cart</a></li>
                                <li><a href="#">Wishlist</a></li>
                                <li><a href="#">Track My Order</a></li>
                                <li><a href="#">Help</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /top footer -->

        <!-- bottom footer -->
        <div id="bottom-footer" class="section">
            <div class="container">
                <!-- row -->
                <div class="row">
                    <div class="col-md-12 text-center bg-white">
                        <ul class="footer-payments">
                            <li><a href="#"><i class="fa fa-cc-visa text-warning"></i></a></li>
                            <li><a href="#"><i class="fa fa-credit-card text-warning"></i></a></li>
                            <li><a href="#"><i class="fa fa-cc-paypal text-warning"></i></a></li>
                            <li><a href="#"><i class="fa fa-cc-mastercard text-warning"></i></a></li>
                            <li><a href="#"><i class="fa fa-cc-discover text-warning"></i></a></li>
                            <li><a href="#"><i class="fa fa-cc-amex text-warning"></i></a></li>
                        </ul>
                    </div>
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /bottom footer -->
    </footer>
    <!-- /FOOTER -->


    <!-- jQuery Plugins -->
    <script src="{{asset('js/jquery.min.js')}}"></script>
    <script src="{{asset('js/bootstrap.min.js')}}"></script>
    <script src="{{asset('js/slick.min.js')}}"></script>
    <script src="{{asset('js/nouislider.min.js')}}"></script>
    <script src="{{asset('js/jquery.zoom.min.js')}}"></script>
    <script src="{{asset('js/main.js')}}"></script>
    <script src="{{asset('js/lib/jquery.js')}}"></script>
    <script src="{{asset('js/dist/jquery.validate.js')}}"></script>
    
    

</body>

</html>
