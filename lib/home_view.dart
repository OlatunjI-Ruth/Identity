import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Olatunji Ruth'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/Ruth.JPG'),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    launchUrlString('https://github.com/OlatunjI-Ruth');
                  },
                  child: Text('Open Github'))
            ],
          ),
        ),
      ),
    );
  }
}
