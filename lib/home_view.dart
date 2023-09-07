import 'package:flutter/material.dart';
import 'package:identity/webview_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TechORB'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('images/Ruth.JPG'),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WebViewPage()));
                  },
                  child: Text('Open Github')),
              // Expanded(child: SizedBox())
            ],
          ),
        ),
      ),
    );
  }
}
