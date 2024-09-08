import 'package:dash_board/utils/styles.dart';
import 'package:flutter/material.dart';

class QuickInvoiceField extends StatelessWidget {
  final String hint;

  const QuickInvoiceField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: Styles.styleRegular16(context).copyWith(
          color: const Color(0xFFAAAAAA),
        ),
        contentPadding: const EdgeInsets.all(20),
        fillColor: const Color(0xFFFAFAFA),
        filled: true,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
    );
  }
}
