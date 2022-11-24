import 'package:flutter/material.dart';
import 'package:fodery_admin/modules/auth/presentation/widgets/button_widget.dart';
import 'package:fodery_admin/modules/auth/presentation/widgets/chip_text_button.dart';
import 'package:fodery_admin/modules/auth/presentation/widgets/text_field_widget.dart';
import 'package:fodery_admin/modules/core/routes/app_routes.dart';
import 'package:fodery_admin/modules/core/validators/auth_validators.dart';
import 'package:vrouter/vrouter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff32343F),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Fodery Admin",
                style: TextStyle(
                  color: Color(0xffFFFFFD),
                  fontSize: 20,
                  fontFamily: "ManropeBold",
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Form(
                key: _loginFormKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(14, 24, 14, 14),
                    constraints: const BoxConstraints(maxWidth: 320),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Email",
                            style: TextStyle(fontFamily: "ManropeRegular")),
                        const SizedBox(
                          height: 8,
                        ),
                        const TextFieldWidget(
                          labelText: "Email",
                          validator: AuthValidators.validateEmail,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text("Password",
                            style: TextStyle(fontFamily: "ManropeRegular")),
                        const SizedBox(
                          height: 8,
                        ),
                        const TextFieldWidget(
                            labelText: "Password",
                            validator: AuthValidators.validatePassword),
                        const SizedBox(
                          height: 18,
                        ),
                        AuthButton(
                          text: "Sign In",
                          onTap: () {
                            context.vRouter.toSegments(
                                [RESTAURANT_SEGMENT, ADD_NEW_SEGMENT],
                                isReplacement: true);
                            print(_loginFormKey.currentState!.validate());
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ChipTextButton(
                  prefixText: "Don't have an account? ",
                  suffixText: "Register",
                  onTap: () {})
            ],
          ),
        ],
      ),
    );
  }
}
