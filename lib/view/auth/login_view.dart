import 'package:animated_button/animated_button.dart';
import 'package:blood_aid_admin/core/utils/responsive_utils.dart';
import 'package:flutter/material.dart';
import '../../main.dart' show size;

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late TextEditingController _emailController;

  late TextEditingController _passwordController;

  late FocusNode _emailFocusNode;

  late FocusNode _passwordFocusNode;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _passwordFocusNode.dispose();
    _emailFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: ResponsiveUtil.scaleSize(
            context,
            size.width * 0.25,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: ResponsiveUtil.scaleSize(
              context,
              15,
            ),
            children: [
              TextFormField(
                focusNode: _emailFocusNode,
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "Enter your email",
                  labelStyle: TextStyle(
                    fontSize: ResponsiveUtil.scaleSize(
                      context,
                      16,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.email_outlined,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      ResponsiveUtil.scaleSize(
                        context,
                        10,
                      ),
                    ),
                  ),
                ),
              ),
              TextFormField(
                controller: _passwordController,
                focusNode: _passwordFocusNode,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  labelText: "Enter your Password",
                  labelStyle: TextStyle(
                    fontSize: ResponsiveUtil.scaleSize(
                      context,
                      16,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      ResponsiveUtil.scaleSize(
                        context,
                        10,
                      ),
                    ),
                  ),
                ),
              ),
              AnimatedButton(
                isLoading: false,
                onTap: () {},
                buttonName: "Login",
                height: ResponsiveUtil.scaleSize(context, size.height * 0.06),
                width: double.infinity,
                radius: BorderRadius.circular(
                  ResponsiveUtil.scaleSize(
                    context,
                    10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
