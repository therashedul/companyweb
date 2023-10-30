    @extends('layouts.blog')
    @section('title', $page->{'name_' . app()->getLocale()})
    @section('slug', $page->{'slug_' . app()->getLocale()})
    @section('name', 'page.single')
    @section('publish', $page->created_at)
    @php        $image = asset('images/' . $page->image);    @endphp
    @section('image', $image)
    @section('id', $page->id)
    @php
        $limited = $page->{'content_' . app()->getLocale()};
        $contents = substr($limited, 0, 200);
        $keywords = substr($limited, 0, 150);
        $keyword = explode(' ', $keywords);
        $content = implode(', ', (array) $keyword);
        // print_r($content);
    @endphp
    @section('description', $page->{'name_' . app()->getLocale()} . $contents)
    @section('keywords', $page->{'name_' . app()->getLocale()} . $content)

    @section('content')
        @if ($page->template == 1)
            <x-forntend.pages.fullwidthpage :page="$page" />
        @elseif ($page->template == 2)
            <x-forntend.pages.sidebarpage :page="$page" />
        @elseif ($page->template == 3)
            <x-forntend.pages.gallery />
        @elseif ($page->template == 4)
            <x-forntend.pages.video />
        @elseif ($page->template == 5)
            <x-forntend.pages.contactpage />
        @endif
        {{-- @if ($page->template == 2)
            @include('parentFolder.childFolder.mypage')
            @include('blog.pages.contactpage')
        @endif --}}

    @endsection
