import 'package:dash_board/views/dash_board_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const AdminDashBoard());
}

class AdminDashBoard extends StatelessWidget {
  const AdminDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const DashBoardView(),
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(
          ThemeData().textTheme,
        ),
      ),
    );
  }
}
