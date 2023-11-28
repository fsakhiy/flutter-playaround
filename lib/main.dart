import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Colors.blueGrey[900]),
      child: Row(
        children: [
          Expanded(child:
              Center(child:
              Text('PlayAround App',style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white))))
          )
        ],
      ),
    );
  }

}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      padding: const EdgeInsets.symmetric(horizontal: 2),
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          Expanded(child:
              Center(child:
              Text('created by FS.dev', style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 12)),))
        ,)
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          const AppTitle(),
          // Expanded(child:
              Center(
                child: Text('welcome to flutter ;)', style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
              ),
          // ),
          const NameInput(),
          const Footer(),
        ],
      ),
    );
  }
}

class NameInput extends StatefulWidget {
  const NameInput({super.key});

  @override
  State<NameInput> createState() => _NameInputState();
}

class _NameInputState extends State<NameInput> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your email',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {
                  // Process data.
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      title: 'Playaround App',
      home: SafeArea(child: HomePage())
    )
  );
}