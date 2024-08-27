import 'package:flutter/material.dart';
import 'package:wayland_layer_shell/types.dart';
import 'dart:async';

import 'package:wayland_layer_shell/wayland_layer_shell.dart';
import 'package:wayland_layer_shell_example/set_exclusive_zone.dart';
import 'package:wayland_layer_shell_example/set_keyboard.dart';
import 'package:wayland_layer_shell_example/set_monitor.dart';
import 'package:wayland_layer_shell_example/set_anchors.dart';
import 'package:wayland_layer_shell_example/set_layer.dart';
import 'package:wayland_layer_shell_example/set_margins.dart';

Future<void> main() async {
  print("Does this work");
  WidgetsFlutterBinding.ensureInitialized();
  final waylandLayerShellPlugin = WaylandLayerShell();
  bool isSupported = await waylandLayerShellPlugin.initialize(0, 80);
  if (!isSupported) {
    runApp(
      const MaterialApp(
        home: Center(
          child: Text('Not supported'),
        ),
      ),
    );
    return;
  }
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
    );
  }
}
