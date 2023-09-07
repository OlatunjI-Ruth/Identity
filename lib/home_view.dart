import 'package:flutter/material.dart';
import 'package:identity/webview_screen.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tech ORB'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 10.0),
            const CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage('images/Ruth.JPG'),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WebViewPage()));
                },
                child: const Text('Open GitHub')),
            const Expanded(child: SizedBox())
          ],
        ),
      ),
    );
  }
}
