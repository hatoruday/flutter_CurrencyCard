import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: const Color(0xFFE7626C),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: const Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}

/*
class Cardwid extends StatelessWidget {
  const Cardwid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Hey, Selena",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Welcome, back",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 70),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Balance",
                      style: TextStyle(
                          fontSize: 22, color: Colors.white.withOpacity(0.8)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "\$5 194 482",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Button(
                          text: "Transfer",
                          bgColor: Color(0xFFF1B33B),
                          textColor: Colors.black,
                        ),
                        Button(
                          text: "Request",
                          bgColor: Color(0xFF1F2123),
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Wallets",
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            )),
                        Text(
                          "View All",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CurrencyCard(
                      name: "Euro",
                      code: "Eur",
                      amount: "6 428",
                      icon: Icons.euro_rounded,
                      isInverted: false,
                    ),
                    Transform.translate(
                      offset: const Offset(0, -40),
                      child: const CurrencyCard(
                        name: "Bitcoin",
                        code: "BTC",
                        amount: "9 785",
                        icon: Icons.currency_bitcoin,
                        isInverted: true,
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -80),
                      child: const CurrencyCard(
                        name: "Dollar",
                        code: "USD",
                        amount: "428",
                        icon: Icons.attach_money_outlined,
                        isInverted: false,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
*/
