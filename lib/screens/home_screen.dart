import 'package:flutter/material.dart';
import 'package:learn/widgets/my_button.dart';
import 'package:learn/widgets/my_card.dart';
import 'package:learn/widgets/my_lists.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBE8E8),
      body: SingleChildScrollView(
        child: SafeArea(
            child:Column(
              children: [
                // App Bar
                const SizedBox(height: 20),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 25),

                  child: Row(
                   mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Text("My", style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          )),
                          Text(" Wallet", style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey
                          )
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle
                        ),
                        child: Icon(Icons.notifications),
                      )
                    ],
                  )
                ),
                const SizedBox(height: 10),
                // cards
                Container(
                  height: 200,
                  child: PageView(
                    controller: pageController,
                    scrollDirection: Axis.horizontal,
                    children: const [
                      MyCard(
                          balance: 100.0,
                          cardNumber: 352418763127,
                          expiredMonth: 11,
                          expiredYear: 25,
                          cardType: 'assets/visa.png'
                      ),
                      MyCard(
                          balance: 30.0,
                          cardNumber: 9902524187637,
                          expiredMonth: 11,
                          expiredYear: 25,
                          cardType: 'assets/master-card.png'
                      ),
                      MyCard(
                          balance: 3000.0,
                          cardNumber: 9902524187637,
                          expiredMonth: 06,
                          expiredYear: 27,
                          cardType: 'assets/american-express.png'
                      ),
                      MyCard(
                          balance: 1500.0,
                          cardNumber: 9902524187637,
                          expiredMonth: 06,
                          expiredYear: 27,
                          cardType: 'assets/google-pay.png'
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15),
                SmoothPageIndicator(
                    controller: pageController,
                    count:4,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: Colors.black54,
                      dotWidth: 12,
                      dotHeight: 12
                    ),
                ),
                SizedBox(height: 40),
                //Buttons
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyButton(
                          iconPath: "assets/payment.png",
                          textButton: "Send"
                      ),
                      MyButton(
                          iconPath: "assets/cash.png",
                          textButton: "Receive"
                      ),
                      MyButton(
                          iconPath: "assets/atm-card.png",
                          textButton: "Pay"
                      ),
                      MyButton(
                          iconPath: "assets/bill-button.png",
                          textButton: "Bills"
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        MyLists(
                            iconPath: 'assets/analytics.png',
                            title: "Analytics",
                            subtitle: "Payment & Income"
                        ),MyLists(
                            iconPath: 'assets/pay.png',
                            title: "Transactions",
                            subtitle: "All Transaction"
                        ),
                        MyLists(
                            iconPath: 'assets/bill.png',
                            title: "Analytics",
                            subtitle: "Billing & History"
                        ),
                        MyLists(
                            iconPath: 'assets/expense.png',
                            title: "Disbursement",
                            subtitle: "Disbursement & History"
                        )
                      ],
                    ),
                )
              ],
            )
        ),
      ),
    );
  }
}
