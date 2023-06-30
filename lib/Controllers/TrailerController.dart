import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrailerController extends GetxController {
  var _page = 0.obs;
  var _isLastPage = false.obs;
  PageController pageController = PageController();

  int get page => _page.value;
  bool get isLastPage => _isLastPage.value;

  void setPage(int value) {
    _page.value = value;
    pageController.animateToPage(value,
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  void setLastPage(bool value) {
    _isLastPage.value = value;
  }
}