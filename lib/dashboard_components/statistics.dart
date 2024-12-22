import 'package:flutter/material.dart';
import 'package:nakbrach/widgets/appbar_widgets.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const AppBarTitle(title: 'Statistics'),
        leading: const AppBarBackButton(),
      ),
    );
  }
}
