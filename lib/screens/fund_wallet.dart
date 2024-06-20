import 'package:flutter/material.dart';
import 'package:anydrawer/anydrawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FundWallet extends StatefulWidget {
  const FundWallet({super.key});

  @override
  State<FundWallet> createState() => _FundWalletState();
}

class _FundWalletState extends State<FundWallet> {
  bool isDrawerOpen = false;
  bool isExpanded = false;

  TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //amount field
    final amountField = TextFormField(
        autofocus: false,
        controller: amountController,
        keyboardType: TextInputType.number,
        validator: (val) => val!.isEmpty ? 'Fill out this field' : null,
        onSaved: (val) {
          amountController.text = val!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))));

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
            child: Image.asset('assets/logo.png', fit: BoxFit.cover, scale: 2)),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Center(
              child: Column(children: [
                const SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(30.0)),
                  width: 320,
                  height: 300,
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      const Text('Fund Wallet Now',
                          style: TextStyle(
                              color: Color(0xff092e57),
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      const Divider(thickness: 1.0, color: Color(0xff092e57)),
                      const SizedBox(height: 20),
                      const SizedBox(
                          width: 280,
                          child: Text('Amount',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xfffe6929),
                              ))),
                      const SizedBox(height: 10),
                      SizedBox(height: 50, width: 280, child: amountField),
                      const SizedBox(height: 10),
                      const SizedBox(
                        child: Text(
                            softWrap: true,
                            style: TextStyle(fontSize: 10),
                            'Type in the amount you wish to fund your wallet with.'),
                      ),
                      const SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          fixedSize: const Size(250, 40),
                          backgroundColor: const Color(0xff092e57),
                        ),
                        child: const Text('Pay',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ]),
            )),
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
                      ])
                ]));
          }),
    );
  }
}
