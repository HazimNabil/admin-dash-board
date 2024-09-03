import 'package:dash_board/widgets/custom_background_container.dart';
import 'package:dash_board/widgets/quick_invoice_header.dart';
import 'package:dash_board/widgets/title_text_field.dart';
import 'package:flutter/material.dart';

import 'latest_transaction.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 24,
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24),
          LatestTransaction(),
          Divider(height: 48),
          TitleTextField(
            title: 'Customer name',
            hint: 'Type customer name',
          ),
        ],
      ),
    );
  }
}
