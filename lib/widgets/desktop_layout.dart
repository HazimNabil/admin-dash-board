import 'package:dash_board/widgets/all_expenses.dart';
import 'package:dash_board/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'quick_invoice.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: CustomDrawer()),
        const SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: ListView(
            children: const [
              SizedBox(height: 40),
              AllExpenses(),
              SizedBox(height: 24),
              QuickInvoice(),
              SizedBox(height: 32),
            ],
          ),
        ),
      ],
    );
  }
}
