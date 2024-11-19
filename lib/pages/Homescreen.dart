// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  late ImagePicker imagePicker;
  @override
  void initState() {
    super.initState();
    imagePicker = ImagePicker();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(10, 60, 10, 40),
      child: Column(
        children: [
          Card(
            // ignore: sort_child_properties_last
            child: Container(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Column(
                      // ignore: sort_child_properties_last
                      children: [
                        Icon(
                          Icons.scanner,
                          size: 25.0,
                          color: Colors.white,
                        ),
                        Text(
                          "Scanner",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    onTap: () => {},
                  ),
                  InkWell(
                    child: Column(
                      children: [
                        Icon(
                          Icons.assignment_sharp,
                          size: 25.0,
                          color: Colors.white,
                        ),
                        Text(
                          "Recognize",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    onTap: () => {},
                  ),
                  InkWell(
                    child: Column(
                      children: [
                        Icon(
                          Icons.image_outlined,
                          size: 25.0,
                          color: Colors.white,
                        ),
                        Text(
                          "Enhance",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    onTap: () => {},
                  )
                ],
              ),
            ),
            color: Colors.blueAccent,
          ),
          Card(
            color: Colors.black,
            child: Container(
              height: MediaQuery.of(context).size.height - 300,
            ),
          ),
          Card(
            // ignore: sort_child_properties_last
            child: Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Icon(
                      Icons.rotate_left,
                      size: 50.0,
                      color: Colors.white,
                    ),
                    onTap: () => {},
                  ),
                  InkWell(
                    child: Icon(
                      Icons.camera,
                      size: 50.0,
                      color: Colors.white,
                    ),
                    onTap: () => {},
                  ),
                  InkWell(
                    child: Icon(
                      Icons.image_outlined,
                      size: 50.0,
                      color: Colors.white,
                    ),
                    onTap: () async {
                      XFile? xfile = await imagePicker.pickImage(
                          source: ImageSource.gallery);
                    },
                  )
                ],
              ),
            ),
            color: Colors.blueAccent,
          )
        ],
      ),
    );
  }
}
