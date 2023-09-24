import 'package:ecommerce_flutter/widgets/primary_button/primary_button.dart';
import 'package:ecommerce_flutter/widgets/top_titles/top_titles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isShowPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            const TopTitles(
                title: "Create Account", subTitle: "Welcome to SignUp page"),
            const SizedBox(height: 46),
            TextFormField(
                decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person),
              hintText: "Name",
            )),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: "E-mail",
                )),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.phone_outlined),
                  hintText: "Phone",
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
            PrimaryButton(title: "Create an account", onPressed: () {}),
            const SizedBox(height: 24),
            const Center(child: Text("I have already an account")),
            const SizedBox(height: 12),
            CupertinoButton(
                onPressed: () {},
                child: Text(
                  "Create an Account",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}
