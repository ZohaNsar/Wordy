import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'customized_text_button.dart';

class Imagepickercustomwidget extends StatefulWidget {
  const Imagepickercustomwidget({super.key});

  @override
  State<Imagepickercustomwidget> createState() =>
      _ImagepickercustomwidgetState();
}

class _ImagepickercustomwidgetState extends State<Imagepickercustomwidget> {
  File? _image; // To store the selected image
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    print("this is lkdjfslkdjfkldjfskdjskdjf");
    final pickedFile = await _picker.pickImage(
      source: ImageSource.gallery, // Use ImageSource.camera for camera
    );

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Select an existing photo or take a photo',
        ),
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.yellow,
            ),
            child: _image != null
                ? Image.file(_image!)
                : Text("No image selected."),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomizedTextButton(
                onPressed: () {
                  _pickImage();
                },
                title: "upload Photo"),
          ],
        )
      ],
    );
  }
}
