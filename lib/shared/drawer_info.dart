import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flowers/shared/user_img_from_firestore.dart';
import 'package:flutter/material.dart';

class DrawerInfo extends StatelessWidget {
    final credential = FirebaseAuth.instance.currentUser!;
  CollectionReference users = FirebaseFirestore.instance.collection('userSSS');

  @override
  Widget build(BuildContext context) {
    return  UserAccountsDrawerHeader(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/img/test.jpg"),
                          fit: BoxFit.cover),
                    ),
                    currentAccountPicture: const ImgUser(),
                    accountEmail: Text(credential.email!),
                    accountName: Text(credential.displayName!,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        )),
                  );
  }
}