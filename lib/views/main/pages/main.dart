import 'package:baihu_shop/bloc/bloc_provider.dart';
import 'package:baihu_shop/views/home/pages/home.dart';
import 'package:baihu_shop/views/profile/pages/profile.dart';
import 'package:flutter/material.dart';
import '../bloc/main_bloc.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MainPageBloc bloc = BlocProvider.of<MainPageBloc>(context);
    return StreamBuilder<int>(
      stream: bloc.stream,/// 监听数据流,这个数据流有一个控制器,通过控制器来更新数据流，从而更新界面
      initialData: 0,//初始界面为第一个
      builder: (_, mainState) {
        return Scaffold(
          body: PageView(
            children: <Widget>[HomePage(), ProfilePage()],
            physics: NeverScrollableScrollPhysics(),//不能滚动
            pageSnapping: false,
            controller: bloc.pageController,/// 通过控制器跳转界面
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: mainState.data,
            onTap: bloc.onChanged,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket),
                title: Text('商户'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('个人'),
              ),
            ],
          ),
        );
      },
    );
  }
}
