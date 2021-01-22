part of 'app_pages.dart';

abstract class Routes {
  static const HOME = _Paths.HOME;
  static const NEWSPAGE = _Paths.NEWSPAGE;
  static const NEW_PAGE = _Paths.NEW_PAGE;
  static const CATEGORIES = _Paths.CATEGORIES;
}

abstract class _Paths {
  static const HOME = '/home';
  static const NEWSPAGE = '/newspage';
  static const NEW_PAGE = '/new-page';
  static const CATEGORIES = '/categories';
}
