import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:flutter/cupertino.dart';

final firestore = FirebaseFirestore.instance;
final auth=FirebaseAuth.instance;
final messagetextcontroller=TextEditingController();
String? messagetext;
class Storage{
  final firebase_storage.FirebaseStorage storage=firebase_storage.FirebaseStorage.instance;
  Future<void> uploadFile(
      String filePath,
      String fileName
      ) async{
    File file=File(filePath);
    try{
      await storage.ref('images/$fileName').putFile(file);
    }on firebase_core.FirebaseException catch(e){
      print(e);
    }
  }
  Future<firebase_storage.ListResult> listFiles() async{
    firebase_storage.ListResult result= await storage.ref('images').listAll();
    result.items.forEach((firebase_storage.Reference ref) {print('found file:$ref'); });
    return result;
  }
}
void messagesstreams() async{
  await for(var snapshot in firestore.collection('messages').snapshots()){
    for(var message in snapshot.docs){
      print(message.data());

    }
  }
}