import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_dialog/modal.dart';

void main() => runApp(ModalDialogs());
class ModalDialogs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ModalDialog(),
    );
  }
}