import 'package:flutter/material.dart';
import 'processing_screen.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Triebreaker'),
        body: Padding(
              padding: const EdgeInserts.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
              controller: _controller,
              decoration: const InputDecoration(labelText: 'what decisions are you making?'),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              final decisions = _controller.text;
              context.read<DecisionsService>().analyzeDecisions(decisions);





    )
      ),
    )
  }
}
