import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wordy/presentation/widgets/home/customized_text_button.dart';

import '../../widgets/home/ImagePickerCustomWidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // title: Text(widget.title),
        title: Text("Wordy")
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
      child: Column(
        children: [
          const Imagepickercustomwidget(),
          CustomizedTextButton(title: "Continue", onPressed: _onContinuePressed)
        ],
      ),
      ),
    );
  }
  _onContinuePressed() {
    context.go('/MainPage');
  }
  _uploadPhotoOnPressed() {}
}
