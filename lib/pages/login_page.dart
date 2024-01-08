import 'package:digital_notebook/appbar/appbar.dart';
import 'package:digital_notebook/color/colors.dart';
import 'package:digital_notebook/navigate/navigate_class.dart';
import 'package:digital_notebook/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
      backgroundColor: Colors.grey[0],
      resizeToAvoidBottomInset: false,
      appBar: ProjectAppBar().newMethod(appBarHeight),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: PngImages(path: 'login_image'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(),
                  labelText: "Phone Number"),
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
                  labelText: "Password"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: projectColor
            ),
            child: Text('Login',style: TextStyle(
              color: barColor
            ),)),
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Don't have an account?"),
              TextButton(
                onPressed: () async{
                    NavigateClass().navigateToWidgetNormal<bool>(context, const RegisterPage());
                  },
                child: Text('Sign Up',
                style: TextStyle(
                  fontSize: 20,
                  color: projectColor)),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class PngImages extends StatelessWidget {
  const PngImages({super.key, required this.path, this.height});

  final String path;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 250,
      child: Image.asset(
        'assets/png/$path.png',
      ),
    );
  }
}
