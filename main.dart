import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'services/decisions_service.dart';
import 'screens/home_screen.dart';

void main() => runApp(const TriebreakerApp)

class TriebreakerApp extends StatelessWidget {

  const TriebreakerApp({super.key});

  const TriebreakerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        providers: [
          ChangeNotifierProvider(create: (context) => DecisionsService()),
        ],
        child: MaterialApp(
          title: 'Tiebreaker',
          theme: ThemeData(colorSchemeSeed: Colors.deepPurple),
          home: const HomeScreen(),
        )

    );
  }
}
