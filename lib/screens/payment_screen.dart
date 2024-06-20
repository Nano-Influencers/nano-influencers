import 'package:flutter/material.dart';
import 'package:anydrawer/anydrawer.dart';
import 'package:nano_influencers/screens/fund_wallet.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool isDrawerOpen = false;
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                icon: isDrawerOpen
                    ? const Icon(Icons.close)
                    : const Icon(Icons.menu),
                onPressed: () {
                  showDrawer(
                    context,
                    builder: (context) {
                      return Container(
                          color: const Color(0xff092e57),
                          child: ListView(children: [
                            SizedBox(
                              height: 65,
                              child: DrawerHeader(
                                  child: Center(
                                      child: Container(
                                width: 240,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Image.asset('assets/logo.png',
                                    fit: BoxFit.fill),
                              ))),
                            ),
                            const SizedBox(height: 20),
                            ListTile(
                                selectedTileColor: Colors.white,
                                leading: const Icon(Icons.home_outlined,
                                    color: Colors.white),
                                title: const Text('Home',
                                    style: TextStyle(color: Colors.white)),
                                onTap: () {}),
                            ListTile(
                                selectedTileColor: Colors.white,
                                leading: const Icon(Icons.dashboard_outlined,
                                    color: Colors.white),
                                title: const Text('Dashboard',
                                    style: TextStyle(color: Colors.white)),
                                onTap: () {}),
                            ExpansionTile(
                                onExpansionChanged: (bool expanded) {
                                  setState(() => isExpanded = expanded);
                                },
                                leading: const Icon(
                                    Icons.account_balance_wallet_outlined,
                                    color: Colors.white),
                                title: const Text('Wallet',
                                    style: TextStyle(color: Colors.white)),
                                trailing: Icon(isExpanded
                                    ? Icons.keyboard_arrow_down
                                    : Icons.chevron_right),
                                children: const [
                                  ListTile(
                                      title: Text('         Fund Wallet',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontStyle: FontStyle.italic))),
                                  ListTile(
                                      title: Text('         Payment History',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontStyle: FontStyle.italic))),
                                ]),
                            ListTile(
                                leading: const Icon(Icons.support_agent,
                                    color: Colors.white),
                                title: const Text('Contact Us',
                                    style: TextStyle(color: Colors.white)),
                                onTap: () {}),
                          ]));
                    },
                    config: const DrawerConfig(
                      side: DrawerSide.left,
                      closeOnClickOutside: true,
                      closeOnEscapeKey: true,
                      backdropOpacity: 0.5,
                      borderRadius: 24,
                    ),
                    onOpen: () {
                      setState(() => isDrawerOpen = true);
                    },
                    onClose: () {
                      setState(() => isDrawerOpen = false);
                    },
                  );
                })
          ],
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue[900],
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(2.0),
              child: Container(
                color: const Color(0xff092e57),
                height: 1.0,
              )),
          title: Container(
              padding: const EdgeInsets.all(2.0),
              child:
                  Image.asset('assets/logo.png', fit: BoxFit.cover, scale: 2)),
        ),
        bottomSheet: BottomSheet(
            onClosing: () {},
            enableDrag: false,
            builder: (BuildContext context) {
              return Container(
                  height: 170,
                  color: const Color(0xff092e57),
                  child: Column(children: [
                    const SizedBox(height: 10),
                    const Text("Send a DM: 09012345678",
                        style: TextStyle(color: Colors.white)),
                    const SizedBox(height: 10),
                    const Text("Follow us on",
                        style: TextStyle(color: Colors.white, fontSize: 10)),
                    //const SizedBox(height: 10),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(FontAwesomeIcons.facebook,
                              color: Colors.white)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(FontAwesomeIcons.twitter,
                              color: Colors.white)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(FontAwesomeIcons.whatsapp,
                              color: Colors.white)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(FontAwesomeIcons.linkedin,
                              color: Colors.white)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(FontAwesomeIcons.telegram,
                              color: Colors.white)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(FontAwesomeIcons.instagram,
                              color: Colors.white)),
                    ]),
                    TextButton(
                        onPressed: () {},
                        child: const Text("Terms and Policy",
                            style: TextStyle(
                                decorationColor: Colors.white,
                                decoration: TextDecoration.underline))),
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.copyright, color: Colors.white),
                          Text(
                              "Copyright Thenanoinfluencers. All Rights Reserved",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          SizedBox(height: 5)
                        ])
                  ]));
            }),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OutlinedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                                  color: Color(0xffff6633),
                                ),
                                fixedSize: const Size(140, 50),
                                backgroundColor: Colors.white,
                                foregroundColor: const Color(0xffff6633),
                              ),
                              child: const Text('Go Back',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold))),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const FundWallet()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(140, 50),
                              backgroundColor: const Color(0xffff6633),
                            ),
                            child: const Text('Proceed to\nPayment',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                          ),
                        ]),
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffff6633),
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                      width: 320,
                      height: 250,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 5),
                          Text(
                              "no of task = 2\ncost per task performed = N20\nQuantity = 100\nDelivery Speed 6hrs - 12hrs time)= 2.0\nTotal quantity (no of task x quantity) =\n200\nTotal Cost (Cost per task performed x\nTotal quantity x Delivery Speed) N20 x 2\nx 200 = N8,000",
                              style: TextStyle(height: 1.8)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextButton(
                      onPressed: () {},
                      child: const Text('PAY N8,000',
                          style: TextStyle(
                              color: Color(0xff092e57),
                              fontSize: 20,
                              decoration: TextDecoration.underline)),
                    )
                  ])),
        ));
  }
}
