import 'package:digital_notebook/appbar/appbar.dart';
import 'package:digital_notebook/pages/login_page.dart';
import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    var appBarHeight = MediaQuery.of(context).padding.top + kToolbarHeight;
    return Scaffold(
      appBar: ProjectAppBar().newMethod(appBarHeight),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        child: Container(
          color: Colors.lime,
          child: Column(children: [
            PngImages(path: 'add_note')
          ],),
        ),
      ),
    );
  }
}
