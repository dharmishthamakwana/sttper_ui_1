import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "Sttper App",
            style: TextStyle(color: Colors.white, letterSpacing: 1),
          ),
        ),
        body: Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: Colors.red,
            ),
          ),
          child: Stepper(
            currentStep: i,
            onStepContinue: () {
              setState(
                () {
                  if (i < 2) {
                    i++;
                  }
                },
              );
            },
            onStepCancel: () {
              setState(() {
                if (i > 0) {
                  i--;
                }
              });
            },
            steps: [
              Step(
                isActive: true,
                title: Text("Signup"),
                content: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          width: 2,
                        ),
                      ),
                      child: ListTile(
                        leading: Icon(Icons.person),
                        title: Text("Full name"),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          width: 2,
                        ),
                      ),
                      child: ListTile(
                        leading: Icon(Icons.email),
                        title: Text("Email_id"),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          width: 2,
                        ),
                      ),
                      child: ListTile(
                        leading: Icon(Icons.lock),
                        title: Text("password"),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          width: 2,
                        ),
                      ),
                      child: ListTile(
                        leading: Icon(Icons.lock),
                        title: Text("confirm password"),
                      ),
                    ),
                  ],
                ),
              ),
              Step(
                isActive: true,
                title: Text("Login"),
                content: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          width: 2,
                        ),
                      ),
                      child: ListTile(
                        leading: Icon(Icons.person),
                        title: Text("user name*"),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          width: 2,
                        ),
                      ),
                      child: ListTile(
                        leading: Icon(Icons.lock),
                        title: Text("password"),
                      ),
                    ),
                  ],
                ),
              ),
              Step(
                isActive: true,
                title: Text("Home"),
                content: TextField(),
              )
            ],
          ),
        ),
      ),
    );
  }

  int i = 0;
}
