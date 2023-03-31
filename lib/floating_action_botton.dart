import 'package:flutter/material.dart';


class FloatingActionButtonView extends StatefulWidget {
  const FloatingActionButtonView({super.key});

  @override
  State<FloatingActionButtonView> createState() => _FloatingActionButtonViewState();
}

class _FloatingActionButtonViewState extends State<FloatingActionButtonView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('flaoting action botton'),
          ],
        )
      ),
    );
  }
}