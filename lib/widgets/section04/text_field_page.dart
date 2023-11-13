import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({Key? key}) : super(key: key);

  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  bool isHidden = true;
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Field'),
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          TextField(
            controller: emailC,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 32,
              ),
              labelText: "Email",
              labelStyle: const TextStyle(
                color: Colors.green
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(
                  width: 2,
                  color: Colors.green,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(
                  width: 2,
                  color: Colors.green,
                ),
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: const Icon(
                  Icons.email,
                  color: Colors.green,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: passC,
            obscureText: isHidden,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 32,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(
                  width: 2,
                  color: Colors.green,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(
                  width: 2,
                  color: Colors.green,
                ),
              ),
              labelText: "Password",
              labelStyle: const TextStyle(
                color: Colors.green
              ),
              prefixIcon: const Padding(
                padding: EdgeInsets.only(left: 12),
                child: Icon(
                  Icons.vpn_key,
                  color: Colors.green,
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      if (isHidden == true) {
                        isHidden = false;
                      } else {
                        isHidden = true;
                      }
                    });
                  },
                  icon: isHidden
                      ? const Icon(
                          Icons.remove_red_eye,
                          color: Colors.green,
                        )
                      : const Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.green,
                        ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              print('Login berhasil, \nemail = ${emailC.text} dan password = ${passC.text}');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 12,
              ),
            ),
            child: const Text(
              'LOGIN',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
