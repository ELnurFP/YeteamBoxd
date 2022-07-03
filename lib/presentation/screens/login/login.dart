import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import 'package:yeteamboxd/presentation/screens/home/home.dart';

import 'package:yeteamboxd/presentation/screens/login/sign_up.dart';

import 'package:yeteamboxd/constants/constant.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController usernameController;
  late TextEditingController passwordController;
  late bool passwordVisibility;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    passwordVisibility = false;
    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
            height: size.height * .357,
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
            "Login",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 6),
          const Text(
            "Please sign in to continue",
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: size.height * .034),
          SizedBox(
            width: size.width * .64,
            child: TextFormField(
              controller: usernameController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter your username";
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
              controller: passwordController,
              obscureText: !passwordVisibility,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter password";
                }
                return null;
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                hintText: "Password",
                labelStyle:
                    const TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                suffixIcon: InkWell(
                  onTap: () => setState(
                    () => passwordVisibility = !passwordVisibility,
                  ),
                  child: Icon(
                    passwordVisibility
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: const Color(0xFF757575),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: size.width * .18, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                InkWell(
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(color: Constant.kSecondColor),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * .044,
          ),
          TextButton(
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();

                Grock.toRemove(const HomeScreen());
              }
            },
            child: const Text(
              "Login",
            ),
          ),
          SizedBox(
            height: size.height * .022,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              "Don't have an account?",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
            ),
            const SizedBox(width: 5),
            InkWell(
              onTap: () {
                Grock.to(const SignUp());
              },
              child: const Text(
                "Sign up",
                style: TextStyle(color: Constant.kSecondColor),
              ),
            ),
          ]),
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
