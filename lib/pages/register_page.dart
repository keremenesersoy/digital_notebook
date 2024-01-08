import 'package:digital_notebook/appbar/appbar.dart';
import 'package:digital_notebook/color/colors.dart';
import 'package:digital_notebook/navigate/navigate_class.dart';
import 'package:digital_notebook/pages/login_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final Color projectColor = ProjectColors.projectMainColor;
  final barColor = ProjectColors.appBarColor;

  bool isVisible = false;

  void changeVisible() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    var appBarHeight = MediaQuery.of(context).padding.top + kToolbarHeight;
    return Scaffold(
      backgroundColor: ProjectColors.backgroundColor,
      appBar: ProjectAppBar().newMethod(appBarHeight),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: PngImages(path: 'register_image'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(),
                  labelText: "Phone Number"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20)
                .add(const EdgeInsets.only(bottom: 20)),
            child: TextField(
              obscureText: isVisible,
              decoration: InputDecoration(
                  prefixIcon: IconButton(
                      onPressed: changeVisible,
                      icon: isVisible
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off)),
                  border: const OutlineInputBorder(),
                  labelText: "Password"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              obscureText: isVisible,
              decoration: InputDecoration(
                  prefixIcon: IconButton(
                      onPressed: changeVisible,
                      icon: isVisible
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off)),
                  border: const OutlineInputBorder(),
                  labelText: "Confirm Password"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: ProjectColors.projectMainColor),
                child: Text(
                  'Signup',
                  style: TextStyle(color: barColor),
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Already have an account?'),
              TextButton(
                  onPressed: () async {
                    NavigateClass().navigateToWidgetNormal<bool>(
                        context, const LoginPage());
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 20, color: ProjectColors.projectMainColor),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
