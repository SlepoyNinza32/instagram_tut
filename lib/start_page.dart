import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page_tutorial/login_page.dart';
import 'package:login_page_tutorial/main_page.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('inst_logo.png'),
              SizedBox(
                height: 20,
              ),
              ClipOval(
                child: Image.asset('oval.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('jacob_w'),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.all(8),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width*0.9,
                child: Center(
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Switch accounts',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 60,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 2,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => MainPage(),
                        ),
                      ),
                      child: Text(
                        "Sign up.",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
