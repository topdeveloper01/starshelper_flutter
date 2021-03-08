import 'dart:ffi';

import 'package:firebase_database/firebase_database.dart';
import 'package:starshelper_app/models/lesson.dart';
import '../models/module.dart';

class api_modules {
  
  static final db = FirebaseDatabase.instance.reference().child('Timetable');

  // static Future<Void> createData(){
  //   return db.child("test").set({
  //     'name': 'Deepak Nishad',
  //     'description': 'Team Lead'
  //   });
  // }

  // static Future<Void>  updateData(){
  //   return db.child('test').update({
  //     'description': 'CEO'
  //   });
  // }

  // static Future<Void>  deleteData(){
  //   return db.child('test').remove();
  // }

  static Future<List<CLesson>> fetchAll() {
    List<CLesson> items = [];
    return db.once().then((DataSnapshot snapshot) {
      for(dynamic item  in snapshot.value) {
        items.add(CLesson.fromDynamic(item));
      }
      return items;
    })
    .catchError((err) {
      print('fetchAll err : $err');
      return items;
    });
  }

}
