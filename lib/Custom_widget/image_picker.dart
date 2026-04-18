import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart' as fp;

class CustomImagePicker extends StatefulWidget {
  final double radius;
  final String defaultImage;

  const CustomImagePicker({
    super.key,
    this.radius = 100,
    required this.defaultImage,
  });

  @override
  State<CustomImagePicker> createState() => _CustomImagePickerState();
}

class _CustomImagePickerState extends State<CustomImagePicker> {
  File? image;
  final picker = ImagePicker();

  Future pickFromCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        image = File(pickedFile.path);
      });
    }
  }

  Future pickFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        image = File(pickedFile.path);
      });
    }
  }

  Future pickFromFiles() async {
    fp.FilePickerResult? result = await fp.FilePicker.pickFiles(
      type: fp.FileType.image,
    );

    if (result != null) {
      setState(() {
        image = File(result.files.single.path!);
      });
    }
  }

  void showOptions() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.all(10.w),
          child: Wrap(
            children: [
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text("Camera"),
                onTap: () {
                  Navigator.pop(context);
                  pickFromCamera();
                },
              ),
              ListTile(
                leading: Icon(Icons.photo),
                title: Text("Gallery"),
                onTap: () {
                  Navigator.pop(context);
                  pickFromGallery();
                },
              ),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text("Files"),
                onTap: () {
                  Navigator.pop(context);
                  pickFromFiles();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.radius * 2,
      height: widget.radius * 2,
      child: Stack(
        children: [
          CircleAvatar(
            radius: widget.radius,
            backgroundImage: image != null
                ? FileImage(image!)
                : AssetImage(widget.defaultImage) as ImageProvider,
          ),

          Positioned(
            bottom: 10.h,
            right: 10.w,
            child: GestureDetector(
              onTap: showOptions,
              child: Container(
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.camera_alt, color: Colors.white, size: 20.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}