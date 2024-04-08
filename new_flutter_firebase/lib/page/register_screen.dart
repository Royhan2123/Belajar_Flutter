import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_flutter_firebase/page/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController txtName = TextEditingController(text: "");
  final TextEditingController txtEmail = TextEditingController(text: "");
  final TextEditingController txtPassword = TextEditingController(text: "");

  bool isValidate() {
    if (txtEmail.text.isEmpty ||
        txtPassword.text.isEmpty ||
        txtName.text.isEmpty) {
      return true;
    } else {
      return false;
    }
  }

  bool isObsucureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(
            20,
          ),
          children: [
            bodys(),
          ],
        ),
      ),
    );
  }

  Widget bodys() {
    return Container(
      padding: const EdgeInsets.all(
        15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          15,
        ),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "Register Your Account",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              contentPadding: const EdgeInsets.all(
                12,
              ),
              hintText: "enter your name",
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            controller: txtName,
            cursorColor: Colors.black,
            enabled: true,
            keyboardType: TextInputType.name,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              contentPadding: const EdgeInsets.all(
                12,
              ),
              hintText: "name@example.com",
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            controller: txtEmail,
            cursorColor: Colors.black,
            enabled: true,
            keyboardType: TextInputType.emailAddress,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              contentPadding: const EdgeInsets.all(
                12,
              ),
              hintText: "enter your password",
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isObsucureText = !isObsucureText;
                  });
                },
                icon: Icon(
                  isObsucureText ? Icons.visibility_off : Icons.visibility,
                ),
              ),
            ),
            controller: txtPassword,
            cursorColor: Colors.black,
            enabled: true,
            keyboardType: TextInputType.visiblePassword,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
            obscureText: isObsucureText,
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(
                  double.infinity,
                  40,
                ),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.purple,
                animationDuration: const Duration(
                  seconds: 3,
                ),
              ),
              onPressed: () {
                if (isValidate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Tolong Masukkan Field nya"),
                      backgroundColor: Colors.red,
                    ),
                  );
                } else {}
              },
              child: const Text(
                "Create Account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have account ?",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
