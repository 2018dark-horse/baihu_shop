import 'package:baihu_shop/bloc/bloc_provider.dart';
import 'package:baihu_shop/components/common/istream_controller%20.dart';
import 'package:flutter/material.dart';

class MainPageBloc extends Bloc {
  IStreamController<int> _controller = IStreamController<int>();

  final PageController pageController = PageController(initialPage: 0);

  Stream<int> get stream {
    return _controller.stream;
  }

  void onChanged(int index) {
    pageController.jumpToPage(index);
    _controller.add(index);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
