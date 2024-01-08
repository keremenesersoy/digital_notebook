import 'package:digital_notebook/color/colors.dart';
import 'package:digital_notebook/navigate/navigate_class.dart';
import 'package:digital_notebook/pages/add_note.dart';
import 'package:flutter/material.dart';

class NotebookPage extends StatefulWidget {
  const NotebookPage({super.key});

  @override
  State<NotebookPage> createState() => _NotebookPageState();
}

class _NotebookPageState extends State<NotebookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: ProjectColors.projectMainColor,
          onPressed: () {
            NavigateClass().navigateToWidgetNormal<bool>(context, const AddNote());
          },
          child: const Icon(Icons.add, color: ProjectColors.appBarColor)),
      body: const Center(child: Text('Notebook')),
    );
  }
}
