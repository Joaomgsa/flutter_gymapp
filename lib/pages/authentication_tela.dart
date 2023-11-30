import 'package:flutter/material.dart';
import 'package:flutter_gymapp/_core/my_colors.dart';
import 'package:flutter_gymapp/components/decoration_auth_fields.dart';

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
                      TextFormField(decoration: getAuthenticationInputDecoration("Email"),),
                      const SizedBox(height: 8,),
                      TextFormField(decoration: getAuthenticationInputDecoration("Senha"),obscureText: true,),
                      const SizedBox(height: 8,),
                     Visibility(visible : !_isLogin, child: Column(
                        children: [
                          TextFormField(decoration: getAuthenticationInputDecoration("Confirme a Senha"),obscureText: true,),
                          const SizedBox(height: 8,),
                          TextFormField(decoration: getAuthenticationInputDecoration("Nome"),),
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
