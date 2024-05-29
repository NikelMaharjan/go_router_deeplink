import 'dart:developer';
import 'package:hive_flutter/hive_flutter.dart';

class DatabaseRepository {
  static const String _boxName = "LocalStorage";
  static const String _tokenKey="tokenKey";

  static final  _instance=DatabaseRepository._();

  late final Box _hiveBox;

  DatabaseRepository._();

  factory DatabaseRepository()=>_instance;


  Future<void> init()async{
    try {
      await Hive.initFlutter();
      _hiveBox = await Hive.openBox(_boxName);
    } catch (e, s) {
      log(e.toString());
      log(s.toString());
    }
  }




  Future<void> saveToken(String token) async {
    return _hiveBox.put(_tokenKey, token);
  }

   Future<void> deleteToken() async {
    await _hiveBox.delete(_tokenKey);
  }

  static String? get authToken  {
    return _instance._hiveBox.get(_tokenKey);
  }

  static bool get haveToken  {
    return authToken!=null;
  }
}
