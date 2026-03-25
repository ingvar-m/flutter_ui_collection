import 'package:flutter/material.dart';
import 'package:my_card_ui/widgets/background_content.dart';
import 'package:my_card_ui/widgets/balance_header.dart';
import 'package:my_card_ui/widgets/my_card.dart';
import 'package:my_card_ui/widgets/top_bar.dart';
import 'package:my_card_ui/widgets/transaction_sheet.dart';

import '../widgets/logo_bank.dart';

class BalancePage extends StatelessWidget {
  const BalancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: BackgroundContent()),
          SafeArea(
            bottom: false,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TopBar(),
                        const SizedBox(height: 8,),
                        Text(
                          "My Cards",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          )
                        ),
                        const SizedBox(height: 20,),
                        MyCard(
                            nameBank: 'MyBank',
                            cardNumber: '0000 0000 0000 0000',
                            date: '00/00',
                            logo: LogoBank(
                              size: 32
                            )
                        ),
                        const SizedBox(height: 24,),
                        BalanceHeader(),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
                TransactionSheet()
              ],
            ),
          )
        ],
      ),
    );
  }
}
