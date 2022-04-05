import 'package:flutter/material.dart';
import 'background.dart';
import 'constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/heart.png',
              height: size.height * 0.1,
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            const Text(
              "First and meet new people",
              style:
              TextStyle(color: Colors.black26, fontWeight: FontWeight.bold),
            ),
            // SizedBox(height: size.height * 0.2,),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: RoundedInputField(
                hintText: "User Name",
                onChanged: (value) {},
              ),
            ),
            RoundPasswordField(
              onChanged: (value) {},
            ),
            const RoundedButton(
              text: 'LOGIN',
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            const Text(
              "Forgot password ?",
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an Account ? ",
                  style: TextStyle(color: kPrimaryColor),
                ),
                SizedBox(
                  width: size.height * 0.03,
                ),
                ElevatedButton(
                    style:
                    ElevatedButton.styleFrom(primary: kPrimaryLightColor),
                    onPressed: () {},
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          color: kPrimaryColor, fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class RoundPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const RoundPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        obscureText: true,
        decoration: const InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String text;

  final Color color, textColor;

  const RoundedButton({
    Key? key,
    required this.text,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(29),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: color,
                  padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 40)),
              onPressed: () {},
              child: Text(
                text,
                style: TextStyle(color: textColor),
              ))),
    );
  }
}

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;

  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
