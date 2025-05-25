import 'package:flutter/material.dart';
import 'package:quiz_application/screen/quiz_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _getAppBar(), body: _getMainBody(context));
  }

  Widget _getMainBody(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(20.0),
            child: Image(image: AssetImage('images/welcome.png')),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => QuizScreen()));
            },
            child: Text(
              'شروع بازی',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo[700],
              minimumSize: Size(220, 50),
              elevation: 4,
            ),
          ),

          SizedBox(height: 100.0),
        ],
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      backgroundColor: Colors.indigo[700],
      title: Text('کوییز کویین', style: TextStyle(color: Colors.white)),
      centerTitle: true,
    );
  }
}
