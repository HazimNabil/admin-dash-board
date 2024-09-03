import 'package:dash_board/utils/styles.dart';
import 'package:dash_board/widgets/quick_invoice_field.dart';
import 'package:flutter/material.dart';

class TitleTextField extends StatelessWidget {
  final String title, hint;

  const TitleTextField({
    super.key,
    required this.title,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Styles.styleMedium16,
        ),
        const SizedBox(height: 12),
        QuickInvoiceField(hint: hint),
      ],
    );
  }
}
