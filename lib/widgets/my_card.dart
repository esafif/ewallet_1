import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiredMonth;
  final int expiredYear;
  final String cardType;

  const MyCard(
    {
      super.key,
      required this.balance,
      required this.cardNumber,
      required this.expiredMonth,
      required this.expiredYear,
      required this.cardType
    }
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
                Colors.blueGrey.withOpacity(0.8),
                Colors.grey.withOpacity(0.2)
              ],
            begin:AlignmentDirectional.topStart,
            end:AlignmentDirectional.bottomEnd,
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                    "Balance",
                    style:
                    TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(height: 10),
                    Image.asset(cardType, height: 50,)
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "\$" + balance.toString(),
              style: const TextStyle(
                color: Colors.black54,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(
              height: 30
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    cardNumber.toString(),
                    style: const TextStyle(
                      color: Colors.black54
                    )
                ),
                Text(
                    expiredMonth.toString() + "/" + expiredYear.toString(),
                    style: const TextStyle(
                      color: Colors.black54
                    )
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
