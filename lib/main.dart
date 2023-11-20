import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const OBJ3DModelScreen(),
    );
  }
}

class OBJ3DModelScreen extends StatefulWidget {
  const OBJ3DModelScreen({super.key});

  @override
  State<OBJ3DModelScreen> createState() => _OBJ3DModelScreenState();
}

class _OBJ3DModelScreenState extends State<OBJ3DModelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Model Viewer')),
      body: const ModelViewer(
        backgroundColor: Color.fromARGB(255, 38, 38, 38),
        src: 'assets/3D_ROOM.glb',
        alt: 'Room',
        ar: true,
        arModes: ['scene-viewer', 'webxr', 'quick-look'],
        autoRotate: true,
      ),
    );
  }
}
