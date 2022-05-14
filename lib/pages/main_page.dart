import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  static const url = "/Main";

  const MainPage({Key? key}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late MainBloc bloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    bloc = MainBloc().load();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Main"),
      ),
    );
  }
}

class MainBloc {
  MainBloc load() {
    return this;
  }
}
