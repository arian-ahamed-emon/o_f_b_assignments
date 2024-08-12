import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Home(),
      title: 'Home',
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hello,World!',
            style: TextStyle(
              color: Colors.red,
              fontSize: 17,
            ),
          ),
          SizedBox(
            height: 30,
            child: Text(
                'Welcome to Flutter!',
              style: TextStyle(
                color: Colors.black45,
              ),
            ),
          ),
          Image.asset(
              'assets/images/flutter.jpeg',
            height: 140,
          ),
          ElevatedButton(onPressed: (){
            print('Button Pressed');
          }, child: Text('Press Me'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          ),
        ],
      ),
      ),
    );
  }
}
