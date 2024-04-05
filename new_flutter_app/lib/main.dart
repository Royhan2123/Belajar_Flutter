import 'package:flutter/cupertino.dart';
import 'package:new_flutter_app/screen/splash_screen.dart';

void main() => runApp(const MainActivity());

class MainActivity extends StatelessWidget {
  const MainActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}