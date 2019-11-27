import 'package:flutter/material.dart';

/**
 * 这里面是封装好的逻辑层
 * BlocProvider是Bloc提供者
 * 可参考：
 * 简书：https://www.jianshu.com/p/7573dee97dbb
 * 
 */

/// Bloc:Business Logc(业务逻辑)
/// 
/// Bloc基类,在里面可使用Widget的生命周期方法
/// 
class Bloc {
  void dispose() {}

  void initState() {}

  void deactivate() {}

  void didChangeDependencies() {}

  void didUpdateWidget() {}
}

class BlocProvider<T extends Bloc> extends StatefulWidget {
  BlocProvider({this.bloc, this.child});
  final Widget child;

  final T bloc;

  static T of<T extends Bloc>(BuildContext context) {
    final _type = _tryOf<BlocProvider<T>>();
    final BlocProvider<T> provider = context.ancestorWidgetOfExactType(_type);
    return provider?.bloc;
  }

  static Type _tryOf<T>() => T;

  @override
  _BlocProviderState createState() => _BlocProviderState();
}

class _BlocProviderState extends State<BlocProvider> {
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void initState() {
    super.initState();
    widget.bloc?.initState();
  }

  @override
  void deactivate() {
    super.deactivate();
    widget.bloc?.deactivate();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    widget.bloc?.didChangeDependencies();
  }

  @override
  void didUpdateWidget(BlocProvider<Bloc> oldWidget) {
    super.didUpdateWidget(oldWidget);
    widget.bloc?.didUpdateWidget();
  }

  @override
  void dispose() {
    super.dispose();
    widget.bloc?.dispose();
  }
}
