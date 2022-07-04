import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

import '../../constants/constant.dart';
import 'home/homepage.dart';
import 'login/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late TextEditingController usernameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  late bool passwordVisibility;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    passwordVisibility = false;
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constant.kMainColor,
      body: Form(
        key: _formKey,
        child: SizedBox(
          height: size.height,
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              topBannerImage(context, size),
              Positioned(
                child: SizedBox(
                  height: size.height,
                  child: buttompart(size),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SingleChildScrollView buttompart(Size size) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height * .3,
          ),
          Image.asset(
            "assets/images/Dots.png",
            width: size.width * .33,
          ),
          const Text(
            "YeteamBoxd",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: size.height * .05),
          const Text(
            "Create An Account",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 6),
          const Text(
            "Create an account to continue",
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: size.height * .034),
          SizedBox(
            width: size.width * .64,
            child: TextFormField(
              controller: usernameController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter username";
                } else if (value.length < 4) {
                  return "Username must be at least 4 characters";
                }
                return null;
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person),
                hintText: "Username",
                labelStyle:
                    const TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: size.width * .64,
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter your email";
                } else if (EmailValidator.validate(value)) {
                  return "Please enter a valid email";
                }
                return null;
              },
              controller: emailController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                hintText: "Email",
                labelStyle:
                    const TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: size.width * .64,
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter your password";
                } else if (value.length < 8) {
                  return "Password must be at least 8 characters";
                } else if (value.contains(" ")) {
                  return "Password must not contain spaces";
                }
                return null;
              },
              controller: passwordController,
              obscureText: !passwordVisibility,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(
                    passwordVisibility
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      passwordVisibility = !passwordVisibility;
                    });
                  },
                ),
                prefixIcon: const Icon(Icons.lock),
                hintText: "Password",
                labelStyle:
                    const TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * .044,
          ),
          TextButton(
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();

                Grock.toRemove(HomePage());
              }
            },
            child: const Text(
              "Sign Up",
            ),
          ),
          SizedBox(
            height: size.height * .022,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have an account? Go to the ",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
              ),
              const SizedBox(width: 5),
              InkWell(
                onTap: () {
                  Grock.to(const LoginPage());
                },
                child: const Text(
                  "Login Page",
                  style: TextStyle(color: Constant.kSecondColor),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

  SizedBox topBannerImage(BuildContext context, Size size) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: (size.height + MediaQuery.of(context).padding.top) / 2,
      child: Image.asset(
        "assets/images/Banner.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
