@extends('layouts.blog')
@section('title', $post->{'name_' . app()->getLocale()})
@section('slug', $post->{'slug_' . app()->getLocale()})
@section('name', 'post.single')
@section('publish', $post->created_at)
@php    $image = asset('images/' . $post->image); @endphp
@section('image', $image)
@section('id', $post->id)
@php
    $limited = $post->{'content_' . app()->getLocale()};
    $contents = substr($limited, 0, 200);
    $keywords = substr($limited, 0, 150);
    $keyword = explode(' ', $keywords);
    $content = implode(', ', (array) $keyword);
@endphp
@section('description', $post->{'name_' . app()->getLocale()} . $contents)
@section('keywords', $post->{'name_' . app()->getLocale()} . $contents)

@section('content')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />

    <!-- Share JS -->
    <script src="{{ asset('js/share.js') }}"></script>

    <style>
        #social-links ul {
            padding-left: 0;
        }

        #social-links ul li {
            display: inline-block;
        }

        #social-links ul li a {
            padding: 6px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin: 1px;
            font-size: 25px;
        }

        #social-links .fa-facebook {
            color: #0d6efd;
        }

        #social-links .fa-twitter {
            color: deepskyblue;
        }

        #social-links .fa-linkedin {
            color: #0e76a8;
        }

        #social-links .fa-whatsapp {
            color: #25D366
        }

        #social-links .fa-reddit {
            color: #FF4500;
            ;
        }

        #social-links .fa-telegram {
            color: #0088cc;
        }
    </style>

@section('content')
    @if ($post->template == 1)
        <x-forntend.posts.sidebarpost :post="$post" :categories="$categories" :postmeta="$postmeta" :reletedpost="$reletedpost"
            :sharebuttons="$sharebuttons" />
    @elseif ($post->template == 2)
        <x-forntend.posts.sidebarpost :post="$post" :categories="$categories" :postmeta="$postmeta" :reletedpost="$reletedpost"
            :sharebuttons="$sharebuttons" />
    @endif

@endsection
