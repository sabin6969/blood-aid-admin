import 'package:animated_button/animated_button.dart';
import 'package:blood_aid_admin/core/constants/app_assets_path.dart';
import 'package:blood_aid_admin/core/utils/responsive_utils.dart';
import 'package:blood_aid_admin/core/widgets/custom_text_form_field.dart';
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

  final ValueNotifier<bool> _isPasswordObsecure = ValueNotifier(true);

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
    _isPasswordObsecure.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ResponsiveUtil.scaleSize(
              context,
              size.width * 0.4,
            ),
          ),
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: ResponsiveUtil.scaleSize(
                context,
                20,
              ),
              children: [
                Image.asset(
                  AppAssetsPath.bloodAidIconPath,
                  height: ResponsiveUtil.scaleSize(
                    context,
                    120,
                  ),
                ),
                Text(
                  "Please login to continue!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomTextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  labelText: "Enter your email",
                  isObsecure: false,
                  borderRadius: BorderRadius.circular(
                    ResponsiveUtil.scaleSize(
                      context,
                      10,
                    ),
                  ),
                  controller: _emailController,
                  currentFocusNode: _emailFocusNode,
                  prefixIcon: Icon(
                    Icons.email_outlined,
                  ),
                ),
                ValueListenableBuilder(
                  valueListenable: _isPasswordObsecure,
                  builder: (context, value, child) {
                    return CustomTextFormField(
                      labelText: "Enter your password",
                      isObsecure: value,
                      borderRadius: BorderRadius.circular(
                        ResponsiveUtil.scaleSize(
                          context,
                          10,
                        ),
                      ),
                      controller: _passwordController,
                      currentFocusNode: _passwordFocusNode,
                      prefixIcon: Icon(
                        Icons.lock_outline,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          _isPasswordObsecure.value =
                              !_isPasswordObsecure.value;
                        },
                        icon: Icon(
                          value ? Icons.visibility : Icons.visibility_off,
                        ),
                      ),
                    );
                  },
                ),
                AnimatedButton(
                  isLoading: false,
                  onTap: () {},
                  buttonName: "Login",
                  height: ResponsiveUtil.scaleSize(
                    context,
                    size.height * 0.06,
                  ),
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
      ),
    );
  }
}
