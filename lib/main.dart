import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/Controller/count_controller.dart';
import 'package:project/home/home_screen.dart';
import 'package:project/profile/profile_screen.dart';
import 'package:project/search/search_screen.dart';

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

      home: MyHomePage(title: '환영합니다, 플러터!'),
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

  int selectedIndex = 0;

  void onItemSelected(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  static List<Widget> itemWidgets = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const ProfileScreen()
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold (
        body: SafeArea (
          child: itemWidgets.elementAt(selectedIndex),
        ),

      floatingActionButton: FloatingActionButton(child: Icon(Icons.abc), onPressed: () => widget.countController.increment(),),

      bottomNavigationBar: BottomNavigationBar (

        items: const [
          BottomNavigationBarItem (
            icon: Icon(Icons.home),
            label: '홈'
          ),

          BottomNavigationBarItem (
            icon: Icon(Icons.search),
            label: '검색'
          ),
          
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '프로필')
        ],

        currentIndex: selectedIndex,
        onTap: (index) => onItemSelected(index),
      ),
    );
  }
}
