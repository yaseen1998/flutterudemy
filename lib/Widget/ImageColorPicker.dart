import 'dart:io';

import 'package:flutter/material.dart';
import 'package:udemy_flutter/API/SharedPrefrence.dart';
import 'package:udemy_flutter/API/urlLauncher.dart';
import 'package:udemy_flutter/BMI/bmiHome.dart';

import 'package:image_picker/image_picker.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    // theme: ThemeData(
    //   primarySwatch: Colors.blue,
    //   canvasColor: Colors.white,
    // ),
    // darkTheme: ThemeData(
    //   // brightness: Brightness.dark,
    //   primarySwatch: Colors.green,
    //   canvasColor: Colors.black,
    // ),
    // themeMode: ThemeMode.light,
    home: NewMain(),
  ));
}

class NewMain extends StatefulWidget {
  const NewMain({super.key});

  @override
  State<NewMain> createState() => _NewMainState();
}

class _NewMainState extends State<NewMain> {
  final ImagePicker _picker = ImagePicker();
  File? _imageFile;
  fetchImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image == null) return;
    setState(() {
      _imageFile = File(image.path);
    });
  }

  final List<Color> _defaultColor = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
  ];
  Color currentColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio & Checkbox'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _imageFile == null
                ? const Text('No image selected.')
                : Image.file(_imageFile!, width: 200, height: 200),
            ElevatedButton(
              onPressed: fetchImage,
              child: const Text('Select Image'),
            ),
            // button show dialog
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: currentColor,
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Alert Dialog'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SingleChildScrollView(
                              child: BlockPicker(
                                pickerColor: Colors.blue,
                                availableColors: _defaultColor,
                                onColorChanged: (color) {
                                  setState(() {
                                    currentColor = color;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Cancel')),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Ok')),
                        ],
                      );
                    });
              },
              child: const Text('Show Dialog'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: currentColor,
                // change color of text
              ),
              
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Alert Dialog'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SingleChildScrollView(
                              child: MaterialPicker(
                                pickerColor: Colors.blue,
                                onColorChanged: (color) {
                                  setState(() {
                                    currentColor = color;
                                  });
                                },
                                enableLabel: true,
                              ),
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Cancel')),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Ok')),
                        ],
                      );
                    });
              },
              child:  Text('Show Metrial picker',style: TextStyle(
                color: useWhiteForeground(currentColor) ?  Colors.white :  Colors.black,
                fontSize: 30),),
              
            ),
          
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: currentColor,
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Alert Dialog'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SingleChildScrollView(
                              child: SlidePicker(
                                pickerColor: Colors.blue,
                                onColorChanged: (color) {
                                  setState(() {
                                    currentColor = color;
                                  });
                                },
                                enableAlpha: true,
                                displayThumbColor: true,
                                showIndicator: true,
                                indicatorBorderRadius:
                                    const BorderRadius.vertical(
                                        top: Radius.circular(10)),
                              ),
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Cancel')),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Ok')),
                        ],
                      );
                    });
              },
              child: const Text('Show Slider picker'),
            )
          
          ],
        ),
      ),
    );
  }
}
