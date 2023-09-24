import 'package:ecommerce_flutter/constants/routes.dart';
import 'package:ecommerce_flutter/screens/auth_ui/sign_up/sign_up.dart';
import 'package:ecommerce_flutter/widgets/primary_button/primary_button.dart';
import 'package:ecommerce_flutter/widgets/top_titles/top_titles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isShowPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(children: [
          const TopTitles(
              title: "Login", subTitle: "Welcome Back To E-commerce App"),
          const SizedBox(height: 46),
          TextFormField(
              decoration: const InputDecoration(
            prefixIcon: Icon(Icons.email_outlined),
            hintText: "E-mail",
          )),
          const SizedBox(
            height: 12,
          ),
          TextFormField(
            obscureText: isShowPassword,
            decoration: InputDecoration(
                hintText: "password",
                prefixIcon: const Icon(Icons.password_outlined),
                suffixIcon: CupertinoButton(
                    onPressed: () {
                      setState(() {
                        isShowPassword = !isShowPassword;
                        // print(isShowPassword);
                      });
                    },
                    child: const Icon(
                      Icons.visibility,
                      color: Colors.grey,
                    ))),
          ),
          const SizedBox(height: 12),
          PrimaryButton(title: "Login", onPressed: () {}),
          const SizedBox(height: 24),
          const Center(child: Text("Don't have an account")),
          const SizedBox(height: 12),
          CupertinoButton(
              onPressed: () {
                Routes.instance.push(widget: const SignUp(), context: context);
              },
              child: Text(
                "Create an Account",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ))
        ]),
      ),
    );
  }
}
