import 'package:flutter/material.dart';

class PageProvider extends ChangeNotifier {
  final PageController _page = PageController();
  int _currentPage = 0;
  PageController get page => _page;
  int get currentPage => _currentPage;
  void setPage(int page) {
    _currentPage = page;
    notifyListeners();
  }
}
