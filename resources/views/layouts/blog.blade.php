<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if IE 9]>    <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
{{-- <html lang="en"> --}}

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title> Carbonassetdevelopers</title>


    @include('asset.blogasset.header')
    <!-- Date picker -->

    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/SyntaxHighlighter/3.0.83/styles/shCoreDefault.min.css" />

    <link rel="stylesheet" href="{{ asset('blogassets/css/zebra_datepicker.min.css') }}" type="text/css">
    {{-- disable right button click --}}
    {{-- <body oncontextmenu="return false;"> --}}

    <style>
        /* Paste this css to your style sheet file or under head tag */
        /* This only works with JavaScript,
    if it's not present, don't show loader */
        .no-js #loader {
            display: none;
        }

        .js #loader {
            display: block;
            position: absolute;
            left: 100px;
            top: 0;
        }

        .se-pre-con {
            position: fixed;
            left: 0px;
            top: 0px;
            width: 100%;
            height: 100%;
            z-index: 9999;
            background: url(images/loader-64x/Preloader_2.gif) center no-repeat #fff;
        }
    </style>
</head>


<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js"></script>
<script>
    //paste this code under head tag or in a seperate js file.
    // Wait for window load
    $(window).load(function() {
        // Animate loader off screen
        $(".se-pre-con").fadeOut("slow");;
    });
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
    var startTime = new Date();
</script>

<body class="nav-md" onbeforeunload="MyFunction();">
    <!-- Paste this code after body tag -->
    <div class="se-pre-con"></div>
    <!-- Ends -->

    <header id="header" class="fixed-top">
        @include('asset.blogasset.nav')
    </header>


    <!-- ======= Header ======= -->
    {{-- <header id="header" class="header d-flex align-items-center fixed-top mt-5">
        @include('asset.blogasset.nav')
    </header> --}}
    <!-- End Header -->
    <main id="main">
        @yield('content')
    </main><!-- End #main -->
    <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>
    @include('asset.blogasset.footer')
</body>

</html>
