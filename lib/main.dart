import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/Controller/count_controller.dart';
import 'package:project/register_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp (
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  final String title;

  final CountController countController = Get.put(CountController());

  MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
        body: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Center (
            child: Text (
              widget.title,
              style: const TextStyle (
                color: Colors.black,
              ),
            ),
          ),

          Center (
            child: Obx(() => Text (
                  widget.countController.count.toString(),
                  style: const TextStyle(color: Colors.black),
                )
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(child: Icon(Icons.abc), onPressed: () => widget.countController.increment(),),
    );
  }
}
