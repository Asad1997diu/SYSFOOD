import 'package:flutter/material.dart';

class ImagePicker extends StatefulWidget {
  const ImagePicker({Key? key}) : super(key: key);

  @override
  State<ImagePicker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Stack(
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/user.png'),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child:InkWell(
                  onTap: (){},
                  child: Icon(Icons.camera_alt,color: Colors.redAccent,
                  size: 28),
                ),
            )
          ],),
      ),
    );
  }
}
