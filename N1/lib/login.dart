import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:n1/createAccount.dart';

import 'btn_filled.dart';
import 'btn_only_text.dart';
import 'home_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isHiddenPassword = true;
  String password = "";
  String user = "";

  void testeOLogin(BuildContext ctx) {
    if (user == "A" && password == "1") {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute<void>(
          builder: (context) => const HomePage(),
        ),
        ModalRoute.withName('/'),
      );
    } else {
      Fluttertoast.showToast(
        msg: "Houve um erro ao fazer o login",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "LOGIN",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 24),
                      ),
                      Container(height: 10),
                      Form(
                        child: Column(
                          children: [
                            TextFormField(
                              onChanged: (newValue) {
                                setState(() {
                                  user = newValue;
                                });
                              },
                              decoration: InputDecoration(
                                label: Text("Usuario"),
                              ),
                            ),
                            Container(height: 20),
                            TextFormField(
                              onChanged: (newValue) {
                                setState(() {
                                  password = newValue;
                                });
                              },
                              obscureText: isHiddenPassword,
                              decoration: InputDecoration(
                                label: Text("Senha"),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isHiddenPassword = !isHiddenPassword;
                                    });
                                  },
                                  child: Container(
                                    child: Icon(
                                      isHiddenPassword
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(height: 50),
                      BtnFullFiled(
                        label: "Login",
                        customWidth: double.infinity,
                        onTap: () {
                          testeOLogin(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  BtnOnlyText(
                    label: "Caso nao tenha conta, Cadastre-se",
                    customWidth: double.infinity,
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => const CreateAccount(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
