part of 'app_pages.dart';


abstract class Routes {
  Routes._();
  static const BOTTOM = _Paths.BOTTOM;
  static const HOME = _Paths.HOME;
  static const SPLASH = _Paths.SPLASH;
  static const LOGIN = _Paths.LOGIN;
  static const FORGOT = _Paths.FORGOT;
  static const UPDATE = _Paths.UPDATE;
  static const PROFILE = _Paths.PROFILE;
  static const NOTIFICATION = _Paths.NOTIFICATION;
  static const HISTORY = _Paths.HISTORY;
}

abstract class _Paths {
  _Paths._();
  static const BOTTOM = '/bottom';
  static const HOME = '/home';
  static const SPLASH = '/splash';
  static const LOGIN = '/login';
  static const FORGOT = '/forgot';
  static const UPDATE = '/update';
  static const PROFILE = '/profile';
  static const NOTIFICATION = '/notification';
  static const HISTORY = '/history';



}
