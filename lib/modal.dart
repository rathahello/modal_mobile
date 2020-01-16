import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

void main() => runApp(ModalDialog());

class ModalDialog extends StatefulWidget {
  @override
  _ModalDialogState createState() => _ModalDialogState();
}

class _ModalDialogState extends State<ModalDialog> {
  TextEditingController todoController = TextEditingController();
  createModal(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            title: Text("Todo List"),
            content: TextField(
              controller: todoController,
              autofocus: true,
            ),
            actions: <Widget>[
              MaterialButton(
                child: Text(
                  "Add New",
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () => {Navigator.of(context).pop(todoController.text.toString()),
                  debugPrint(todoController.text.toString()),
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo List"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => createModal(context),
        child: Icon(Icons.add),
      ),
    );
  }
}
