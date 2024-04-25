import 'dart:io';
import 'package:fligth_app/presentation/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadProfileImage extends StatefulWidget {
  const UploadProfileImage({super.key});

  @override
  State<UploadProfileImage> createState() => _UploadProfileImageState();
}

class _UploadProfileImageState extends State<UploadProfileImage> {
  XFile? profilePic;
  uploadProfilePic(XFile image) {
    profilePic = image;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        profilePic == null
            ? //default image
            CircleAvatar(
                radius: 55,
                backgroundColor: Colors.grey[300],
                child: const ClipOval(
                    child: Icon(
                  Icons.person,
                  color: Colors.grey,
                  size: 65,
                )),
              )
            : // user profile image
            CircleAvatar(
                radius: 56.5,
                backgroundColor: AppColors.primaryColor,
                child: CircleAvatar(
                  radius: 55,
                  backgroundImage: FileImage(File(profilePic!.path)),
                ),
              ),
        InkWell(
          onTap: () {
            setState(() {
              ImagePicker()
                  .pickImage(source: ImageSource.gallery)
                  .then((value) => uploadProfilePic(value!));
            });
          },
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey.shade300,
            child: Icon(
              Icons.add_a_photo,
              size: 30,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
        )
      ],
    );
  }
}
