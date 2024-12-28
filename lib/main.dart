import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Hiển thị animation từ file JSON nội bộ
            Lottie.asset(
              'assets/error.json', // Đường dẫn file JSON
              width: 200,
              height: 200,
              fit: BoxFit.fill,
            ),

            const SizedBox(height: 20),
            // Animation lặp vô hạn với tốc độ tùy chỉnh
            Lottie.asset(
              'assets/loading_2.json',
              width: 200,
              height: 200,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
