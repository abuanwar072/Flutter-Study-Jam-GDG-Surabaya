import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SiginForm extends StatelessWidget {
  const SiginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: "Email address",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(
                  "assets/icons/Message.svg",
                  height: 16,
                  colorFilter: ColorFilter.mode(
                    Color(0xFFB8B5C3),
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Password",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(
                  "assets/icons/Lock.svg",
                  height: 16,
                  colorFilter: ColorFilter.mode(
                    Color(0xFFB8B5C3),
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(foregroundColor: Color(0xFF7B61FF)),
            child: Text("Forgot password"),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 40),
              backgroundColor: Color(0xFF7B61FF),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
            child: Text("Log in"),
          ),
        ],
      ),
    );
  }
}
