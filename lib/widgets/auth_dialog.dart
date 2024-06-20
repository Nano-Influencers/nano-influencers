import 'package:flutter/material.dart';
import '../authentication/auth.dart';

class AuthDialog extends StatefulWidget {
  const AuthDialog({super.key});

  @override
  State<AuthDialog> createState() => _AuthDialogState();
}

class _AuthDialogState extends State<AuthDialog> {
  late TextEditingController textControllerEmail;
  late TextEditingController textControllerPassword;
  late FocusNode textFocusNodeEmail;
  late FocusNode textFocusNodePassword;
  bool _isEditingEmail = false;
  bool _isEditingPassword = false;

  final AuthService _auth = AuthService();

  String? _validatePassword(String value) {
    value = value.trim();

    if (textControllerPassword.text.isNotEmpty) {
      if (value.isEmpty) {
        return 'Password can\'t be empty';
      } else if (value.length < 8) {
        return 'Password must contain at least 8 characters';
      }
    }

    return null;
  }

  String? _validateEmail(String value) {
    value = value.trim();

    if (textControllerEmail.text.isNotEmpty) {
      if (value.isEmpty) {
        return 'Email can\'t be empty';
      } else if (!value.contains(RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))) {
        return 'Enter a correct email address';
      }
    }

    return null;
  }

  @override
  void initState() {
    textControllerEmail = TextEditingController();
    textControllerPassword = TextEditingController();
    textControllerEmail.text = '';
    textControllerPassword.text = '';
    textFocusNodeEmail = FocusNode();
    textFocusNodePassword = FocusNode();
    super.initState();
  }

  Widget emailField() {
    return TextField(
      focusNode: textFocusNodeEmail,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      controller: textControllerEmail,
      autofocus: false,
      onChanged: (value) {
        setState(() {
          _isEditingEmail = true;
        });
      },
      onSubmitted: (value) {
        textFocusNodeEmail.unfocus();
        FocusScope.of(context).requestFocus(textFocusNodePassword);
      },
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.blueGrey[800]!,
            width: 3,
          ),
        ),
        filled: true,
        hintStyle: TextStyle(
          color: Colors.blueGrey[300],
        ),
        hintText: "Email",
        fillColor: Colors.white,
        errorText:
            _isEditingEmail ? _validateEmail(textControllerEmail.text) : null,
        errorStyle: const TextStyle(
          fontSize: 12,
          color: Colors.redAccent,
        ),
      ),
    );
  }

  Widget passwordField() {
    return TextField(
      obscureText: true,
      focusNode: textFocusNodePassword,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      controller: textControllerPassword,
      autofocus: false,
      onChanged: (value) {
        setState(() {
          _isEditingPassword = true;
        });
      },
      onSubmitted: (value) {
        textFocusNodePassword.unfocus();
      },
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.blueGrey[800]!,
            width: 3,
          ),
        ),
        filled: true,
        hintStyle: TextStyle(
          color: Colors.blueGrey[300],
        ),
        hintText: "Password",
        fillColor: Colors.white,
        errorText: _isEditingPassword
            ? _validatePassword(textControllerEmail.text)
            : null,
        errorStyle: const TextStyle(
          fontSize: 12,
          color: Colors.redAccent,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(30, 0, 35, 10),
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.height * 0.6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  child: Image.asset(
                    'assets/logo.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const Text('Email address',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              emailField(),
              const SizedBox(height: 20),
              const Text('Password',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              passwordField(),
              const SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    flex: 1,
                    child: SizedBox(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        onPressed: () async {
                          _auth
                              .signInWithEmailAndPassword(
                                  textControllerEmail.text,
                                  textControllerPassword.text)
                              .then((value) => Navigator.pop(context));
                        },
                        child: const Text(
                          'Log in',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Flexible(
                    flex: 1,
                    child: SizedBox(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        onPressed: () async {
                          await _auth
                              .registerWithEmailAndPassword(
                                  textControllerEmail.text,
                                  textControllerPassword.text)
                              .then((value) => Navigator.pop(context));
                        },
                        child: const Text(
                          'Sign up',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
