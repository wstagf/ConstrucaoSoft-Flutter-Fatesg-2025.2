import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:n1/home_page.dart';
import 'package:n1/login.dart';

import 'btn_filled.dart';
import 'btn_only_text.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool isHiddenPassword = true;

  String password = "";
  String passwordRepeat = "";
  String user = "";

  void testeOCadastro(BuildContext ctx) {
    if (password != passwordRepeat) {
      Fluttertoast.showToast(
        msg: "As senhas não são iguais",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    } else if (user == "A" && password == "1" && passwordRepeat == "1") {
      Fluttertoast.showToast(
        msg: "Cadastrado com sucesso",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0,
      );

      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute<void>(
          builder: (context) => const HomePage(),
        ),
        ModalRoute.withName('/'),
      );
    } else {
      Fluttertoast.showToast(
        msg: "Houve um erro ao fazer o Cadastro",
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
                        "Cadastro",
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
                              obscureText: isHiddenPassword,
                              onChanged: (newValue) {
                                setState(() {
                                  password = newValue;
                                });
                              },
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
                            Container(height: 20),
                            TextFormField(
                              obscureText: isHiddenPassword,
                              onChanged: (newValue) {
                                setState(() {
                                  passwordRepeat = newValue;
                                });
                              },
                              decoration: InputDecoration(
                                label: Text("Confirmação de Senha"),
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
                        label: "Cadastro",
                        customWidth: double.infinity,
                        onTap: () {
                          testeOCadastro(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  BtnOnlyText(
                    label: "Já possui conta, faça login",
                    customWidth: double.infinity,
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => const Login(),
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
