import 'package:flutter/material.dart';
import 'package:my_card_ui/constants/app_colors.dart';
import 'package:my_card_ui/widgets/transaction_item.dart';

class TransactionSheet extends StatelessWidget {
  TransactionSheet({super.key});

  final List<TransactionItem> transactionItems = [
    TransactionItem(
        icon: Icons.compare_arrows,
        iconColors: [
          Color(0xffF79E1B),
          Color(0xffFF5F00),
        ],
        title: 'Title',
        subTitle: 'Subtitle',
        amount: '-\$125.00'
    ),
    TransactionItem(
        icon: Icons.movie,
        iconColors: [
          Color(0xff524FD2),
          Color(0xff1410B4),
        ],
        title: 'Title',
        subTitle: 'Subtitle',
        amount: '-\$55.00'
    ),
    TransactionItem(
        icon: Icons.shopping_basket_outlined,
        iconColors: [
          Color(0xffCF2ADD),
          Color(0xff970DD9),
        ],
        title: 'Title',
        subTitle: 'Subtitle',
        amount: '-\$327.00'
    ),
    TransactionItem(
        icon: Icons.compare_arrows,
        iconColors: [
          Color(0xffF79E1B),
          Color(0xffFF5F00),
        ],
        title: 'Title',
        subTitle: 'Subtitle',
        amount: '-\$125.00'
    ),
    TransactionItem(
        icon: Icons.movie,
        iconColors: [
          Color(0xff524FD2),
          Color(0xff1410B4),
        ],
        title: 'Title',
        subTitle: 'Subtitle',
        amount: '-\$55.00'
    ),
    TransactionItem(
        icon: Icons.shopping_basket_outlined,
        iconColors: [
          Color(0xffCF2ADD),
          Color(0xff970DD9),
        ],
        title: 'Title',
        subTitle: 'Subtitle',
        amount: '-\$327.00'
    ),
    TransactionItem(
        icon: Icons.compare_arrows,
        iconColors: [
          Color(0xffF79E1B),
          Color(0xffFF5F00),
        ],
        title: 'Title',
        subTitle: 'Subtitle',
        amount: '-\$125.00'
    ),
    TransactionItem(
        icon: Icons.movie,
        iconColors: [
          Color(0xff524FD2),
          Color(0xff1410B4),
        ],
        title: 'Title',
        subTitle: 'Subtitle',
        amount: '-\$55.00'
    ),
    TransactionItem(
        icon: Icons.shopping_basket_outlined,
        iconColors: [
          Color(0xffCF2ADD),
          Color(0xff970DD9),
        ],
        title: 'Title',
        subTitle: 'Subtitle',
        amount: '-\$327.00'
    ),
    TransactionItem(
        icon: Icons.compare_arrows,
        iconColors: [
          Color(0xffF79E1B),
          Color(0xffFF5F00),
        ],
        title: 'Title',
        subTitle: 'Subtitle',
        amount: '-\$125.00'
    ),
    TransactionItem(
        icon: Icons.movie,
        iconColors: [
          Color(0xff524FD2),
          Color(0xff1410B4),
        ],
        title: 'Title',
        subTitle: 'Subtitle',
        amount: '-\$55.00'
    ),
    TransactionItem(
        icon: Icons.shopping_basket_outlined,
        iconColors: [
          Color(0xffCF2ADD),
          Color(0xff970DD9),
        ],
        title: 'Title',
        subTitle: 'Subtitle',
        amount: '-\$327.00'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.transactionsSheetColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25)
          )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24,),
              Center(
                child: Container(
                  height: 3,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
              const SizedBox(height: 18,),
              Text(
                'Today',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600
                ),
              ),
              const SizedBox(height: 14,),
              for(int i = 0; i < transactionItems.length; i++) 
                if(i > 0)
                  Padding(
                      padding: EdgeInsets.only(top: 21),
                    child: transactionItems[i],
                  )
                else
                  transactionItems[i],
              const Spacer(),
              const SizedBox(height: 32,)
            ],
          ),
        ),
      ),
    );
  }
}
