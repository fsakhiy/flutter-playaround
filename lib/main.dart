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
          Expanded(
              child: Center(
                child: Text('welcome to flutter ;)', style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
              ),
          ),
          const Footer(),
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