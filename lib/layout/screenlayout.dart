import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hope/screens/login.dart';
import 'package:hope/utils/colors.dart';
import 'package:hope/widgets/cryptopost.dart';
import 'package:hope/widgets/exchangepost.dart';
import 'package:hope/widgets/searchbar.dart';
import 'package:hope/widgets/stockpost.dart';
import 'package:hope/widgets/text_field_input.dart';

class ScreenLayout extends StatefulWidget {
  const ScreenLayout({super.key});

  @override
  State<ScreenLayout> createState() => _ScreenLayoutState();
}

class _ScreenLayoutState extends State<ScreenLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: gold,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
            )),
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              backgroundColor:buttonsBackground,
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('Close')),
                                TextButton(
                                    onPressed: () {
                                      
                                      Navigator.push(
                                        context, 
                                        MaterialPageRoute(builder: (context) => LoginScreen()
                                        )
                                      );
                                    },
                                    child: const Text('Sign Out'))
                              ],
                              title:const Text('Sign Out'),
                              content: const Text('You are signing out.'),
                            ));
              },
              icon: const Icon(
                Icons.logout_rounded,
                color: Colors.black,
                size: 30,
              ))
        ],
        centerTitle: true,
        title: SvgPicture.asset(
          'assets/FinanSync-logos_transparent.svg',
          height: 50,
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  minimumSize: const Size(110, 8),
                  foregroundColor: gold,
                  textStyle: const TextStyle(fontSize: 18),
                  backgroundColor: buttonsBackground,
                ),
                onPressed: () {},
                child: const Text('Stock'),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  minimumSize: const Size(110, 8),
                  foregroundColor: gold,
                  textStyle: const TextStyle(fontSize: 18),
                  backgroundColor: buttonsBackground,
                ),
                onPressed: () {},
                child: const Text('Crypto'),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  minimumSize: const Size(110, 8),
                  foregroundColor: gold,
                  textStyle: const TextStyle(fontSize: 18),
                  backgroundColor: buttonsBackground,
                ),
                onPressed: () {},
                child: const Text('Exchange'),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 80),
            child: SearchArea(),
          ),
          Expanded(
              child: Container(
            child: PageView(
              children: [
                ListView(
                  children: [
                    StocksPost(),
                    StocksPost(),
                    StocksPost(),
                    StocksPost(),
                  ],
                ),
                ListView(
                  children: [
                    CryptoPost(),
                    CryptoPost(),
                    CryptoPost(),
                    CryptoPost(),
                  ],
                ),
                ListView(
                  children: [
                    ExchangePost(),
                    ExchangePost(),
                    ExchangePost(),
                    ExchangePost(),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
              icon: Icon(
                Icons.account_balance_wallet_outlined,
                color: gold,
                size: 30,
              ),
              label: 'Balance'),
          NavigationDestination(
              icon: Icon(
                Icons.home_filled,
                color: gold,
                size: 30,
              ),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(
                Icons.settings_outlined,
                color: gold,
                size: 30,
              ),
              label: 'Settings'),
          NavigationDestination(
              icon: Icon(
                Icons.account_circle,
                color: gold,
                size: 30,
              ),
              label: 'Profile')
        ],
        //onDestinationSelected: ,
      ),
    );
  }
}
