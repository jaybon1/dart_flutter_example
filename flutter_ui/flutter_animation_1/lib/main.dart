import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const AnimatedScreen1(),
    );
  }
}

class AnimatedScreen1 extends StatefulWidget {
  const AnimatedScreen1({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen1> createState() => _AnimatedScreen1State();
}

class _AnimatedScreen1State extends State<AnimatedScreen1>
    with SingleTickerProviderStateMixin {
  double _scale = 0;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    _animation =
        Tween<double>(begin: 0, end: 1.5).animate(_animationController);

    _animation.addListener(() {
      setState(() {
        _scale = _animation.value;
      });
    });

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _animationController.reset();
          _animationController.forward();
        },
        child: const Icon(Icons.play_arrow),
      ),
      appBar: AppBar(title: const Text('Animated Screen')),
      body: Center(
        child: Transform.scale(
          scale: _scale,
          child: const Text(
            'Hello, world!',
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}

// 훅스 버전도 연결해서 작동시켜보자.
class AnimatedScreen extends HookWidget {
  const AnimatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final animationController =
        useAnimationController(duration: const Duration(seconds: 2));
    final scale = useAnimation(
        Tween<double>(begin: 0, end: 1.5).animate(animationController));

    useEffect(() {
      animationController.forward();
    });

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          animationController.reset();
          animationController.forward();
        },
        child: const Icon(Icons.play_arrow),
      ),
      appBar: AppBar(title: const Text('Animated Screen')),
      body: Center(
        child: Transform.scale(
          scale: scale,
          child: const Text(
            'Hello, world!',
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
