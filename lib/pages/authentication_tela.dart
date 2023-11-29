import 'package:flutter/material.dart';
import 'package:flutter_gymapp/_core/my_colors.dart';

class AuthenticationTela extends StatefulWidget {
  const AuthenticationTela({super.key});

  @override
  State<AuthenticationTela> createState() => _AuthenticationTelaState();
}

class _AuthenticationTelaState extends State<AuthenticationTela> {
  bool _isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.azulEscuro,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  MyColors.azulTopoGradiente,
                  MyColors.azulBaixoGradiente
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children:[
                     Image.asset("assets/logo.png",height: 128),
                      const Text(
                          "Meu Maromba",
                          textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),),
                      const SizedBox(height: 32,),
                      TextFormField(decoration: const InputDecoration(label: Text("E-mail")),),
                      TextFormField(decoration: const InputDecoration(label: Text("Senha")),obscureText: true,),
                     Visibility(visible : !_isLogin, child: Column(
                        children: [
                          TextFormField(decoration: const InputDecoration(label: Text("Confirmar Senha")),obscureText: true,),
                          TextFormField(decoration: const InputDecoration(label: Text("Nome ")),),
                        ],
                     )),
                      const SizedBox(height: 16,),
                      ElevatedButton(onPressed: () {}, child: Text((_isLogin)? "Entrar": "Cadastrar"),),
                      Divider(),
                      TextButton(onPressed: () {
                        setState(() {
                          _isLogin = !_isLogin;
                        });
                      }, child: Text((_isLogin)? "Não tem conta? Clique aqui!": "Já tem uma conta? Entre"),),
                   ],
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
