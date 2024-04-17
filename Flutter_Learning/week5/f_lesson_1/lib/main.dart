import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.ltr,
      child: Center(
        child: Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
          style: TextStyle(
            fontSize: 30.0,
            // background: Paint()..color = Colors.blue,
            backgroundColor: Color(0xFF24E6B5),
            color: Colors.white,
            // foreground: Paint()..color = Colors.amber[800]!,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Roboto',
            height: 1.0,
            letterSpacing: 7,
            wordSpacing: 10,
            // decoration: TextDecoration.lineThrough,
            decorationColor: Colors.red,
            decorationThickness: 3,
            decorationStyle: TextDecorationStyle.wavy,
            overflow: TextOverflow.fade,
            shadows: [
              Shadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 3),
              Shadow(color: Colors.red, offset: Offset(5, 5), blurRadius: 5)
            ],
          ),
          textAlign: TextAlign.center,
          strutStyle: StrutStyle(
            fontSize: 30.0,
            height: 1.0,
            leading: 1.0,
            forceStrutHeight: true,
          ),
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
