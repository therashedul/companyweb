  <!-- top navigation -->
  <div class="top_nav">
      <div class="nav_menu">
          <div class="nav toggle">
              <a id="menu_toggle"><i class="fa fa-bars"></i></a>
          </div>
          @php
              $user = Auth::user()
                  ->where('id', '3')
                  ->get()
                  ->first();
          @endphp
          {{-- {{ $user->id }} --}}
          <nav class="nav navbar-nav">
              <ul class=" navbar-right">
                  <li class="nav-item dropdown open" style="padding-left: 10px; padding-right:5px;">
                      <a href="javascript:;" class="user-profile dropdown-toggle" aria-haspopup="true"
                          id="navbarDropdown" data-toggle="dropdown" aria-expanded="false">
                          @if (Auth::check())
                              @php
                                  $username = Auth::user()->name;
                              @endphp
                              @if (!empty(Auth::user()->profile_image))
                                  <img src="{{ asset('thumbnail/' . Auth::user()->profile_image) }}" alt="">
                              @else
                                  <img src="{{ asset('img/profile/profile-image.png') }}">
                              @endif
                              {{ $username }}
                          @endif
                      </a>
                      <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown">
                          <a class="dropdown-item" href="javascript:;"> Profile</a>
                          <a class="dropdown-item" href="javascript:;">
                              <span>Settings</span>
                          </a>
                          <a class="dropdown-item" href="{{ route('signout') }}"
                              onclick="event.preventDefault();
                                                                         document.getElementById('logout-form').submit();"><i
                                  class="fa fa-sign-out pull-right"></i> Log
                              Out</a>
                          <form id="logout-form" action="{{ route('signout') }}" method="POST" class="d-none">
                              @csrf
                          </form>
                      </div>
                  </li>
                  <li role="presentation" class="nav-item dropdown open">
                      <a href="javascript:;" class="dropdown-toggle info-number" id="navbarDropdown1"
                          data-toggle="dropdown" aria-expanded="false">
                          <i class="fa fa-envelope"></i>
                      </a>
                      <ul class="dropdown-menu list-unstyled msg_list" role="menu" aria-labelledby="navbarDropdown1">
                          <li class="nav-item">
                              <a class="dropdown-item">
                                  <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                                  <span>
                                      <span>John Smith</span>
                                      <span class="time">3 mins ago</span>
                                  </span>
                                  <span class="message">
                                      Film festivals used to be do-or-die moments for movie makers. They were where...
                                  </span>
                              </a>
                          </li>
                      </ul>
                  </li>

                  <li class="nav-item dropdown open" style="padding-right: 15px;">
                      <select class="form-control lang-change">
                          @foreach (config('app.multilocale') as $lang)
                              <option value="{{ $lang }}" {{ $lang == app()->getLocale() ? 'selected' : '' }}>
                                  {{ $lang == 'bn' ? 'Bangla' : 'English' }}
                              </option>
                          @endforeach
                      </select>
                      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
                      <script type="text/javascript">
                          var url = "{{ request()->url() }}";
                          $('.lang-change').change(function() {
                              let lang_code = $(this).val();
                              window.location.href = url + "?language=" + lang_code;
                          });
                      </script>
                  </li>
              </ul>

          </nav>
      </div>
  </div>
  <!-- /top navigation -->
