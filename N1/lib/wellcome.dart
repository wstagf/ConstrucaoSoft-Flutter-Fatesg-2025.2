import 'package:flutter/material.dart';
import 'package:n1/createAccount.dart';
import 'package:n1/login.dart';

import 'btn_filled.dart';
import 'btn_only_text.dart';

class Wellcome extends StatelessWidget {
  const Wellcome({super.key});

  void NavigateToLogin(BuildContext ctx) {
    Navigator.push(
      ctx,
      MaterialPageRoute<void>(
        builder: (context) => const Login(),
      ),
    );
  }

  void NavigateToCreateAccount(BuildContext ctx) {
    Navigator.push(
      ctx,
      MaterialPageRoute<void>(
        builder: (context) => const CreateAccount(),
      ),
    );
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
                    children: [
                      Text(
                        "Bem Vindo ao UP-TODO",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 24),
                      ),
                      Container(height: 10),
                      Text(
                        "Seu melhor app de gestão de tarefas",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                      Container(height: 20),
                      Text(
                        "Faça Login ou Crie sua conta para continuar",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  BtnFullFiled(
                    label: "Login",
                    customWidth: double.infinity,
                    onTap: () {
                      NavigateToLogin(context);
                    },
                  ),
                  Container(
                    height: 15,
                  ),
                  BtnOnlyText(
                    label: "Criar Conta",
                    customWidth: double.infinity,
                    onTap: () {
                      NavigateToCreateAccount(context);
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
