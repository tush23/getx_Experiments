part of 'app_pages.dart';

abstract class Routes {
  static const HOME = _Paths.HOME;
  static const NEWSPAGE = _Paths.NEWSPAGE;
  static const SEARCH = _Paths.SEARCH;
}

abstract class _Paths {
  static const HOME = '/home';
  static const NEWSPAGE = '/newspage';
  static const SEARCH = '/search';
}
