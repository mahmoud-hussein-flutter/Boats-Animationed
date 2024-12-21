import 'package:flutter/material.dart';
import 'package:boats_app/ui/screens/boat_list_screen.dart'; // Ensure this path is correct

void main() {
  runApp(const BoatsApp());
}

class BoatsApp extends StatelessWidget {
  const BoatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            // Using headline6 for better compatibility with older Flutter versions
            fontSize: 32,
            color: Colors.grey[800],
          ),
          bodyMedium:
              const TextStyle(fontSize: 16), // bodyText2 for compatibility
        ),
      ),
      home:
          const BoatListPage(), // Ensure that BoatListPage is correctly defined
    );
  }
}
