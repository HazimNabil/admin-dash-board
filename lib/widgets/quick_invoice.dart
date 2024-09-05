import 'package:dash_board/widgets/custom_background_container.dart';
import 'package:dash_board/widgets/custom_button.dart';
import 'package:dash_board/widgets/quick_invoice_form.dart';
import 'package:dash_board/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
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
          Divider(
            height: 48,
            color: Color(0xFFF1F1F1),
          ),
          QuickInvoiceForm(),
          SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  text: 'Add more details',
                  backgroundColor: Colors.white,
                  textColor: kPrimaryColor,
                ),
              ),
              SizedBox(width: 24),
              Expanded(
                child: CustomButton(
                  text: 'Send Money',
                  backgroundColor: kPrimaryColor,
                  textColor: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
