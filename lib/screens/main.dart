library chat_pool;

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:chatpool/Consts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:chatpool/utils/Utils.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'dart:math' as Math;
import 'package:image/image.dart' as Im;
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:connectivity/connectivity.dart';
import 'package:firebase_database/firebase_database.dart';

part 'package:chatpool/screens/Login.dart';
part 'package:chatpool/utils/Authentication.dart';
part 'package:chatpool/screens/MainScreen.dart';
part 'package:chatpool/screens/Friends.dart';
part 'package:chatpool/screens/Chat.dart';
part 'package:chatpool/utils/Communication.dart';
part 'Me.dart';
part 'Settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/main' : (context) => MainScreen(),
        '/main/friends' : (context) => FriendsScreen(),
        '/main/chat' : (context) => ChatScreen(),
        '/main/settings' : (context) => SettingsScreen(),
        '/main/settings/me' :(context) => MeScreen()
      },
    );
  }
}