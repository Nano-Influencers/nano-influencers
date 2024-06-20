import 'package:flutter/material.dart';
import 'package:anydrawer/anydrawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SpecialService extends StatefulWidget {
  const SpecialService({super.key});

  @override
  State<SpecialService> createState() => _SpecialServiceState();
}

class _SpecialServiceState extends State<SpecialService> {
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
            child: Image.asset('assets/logo.png', fit: BoxFit.cover, scale: 2)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 60),
                const Text('Special Services 1',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff092e57),
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff092e57)),
                      borderRadius: BorderRadius.circular(30.0)),
                  width: 320,
                  height: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 5.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text('Select Service',
                            style: TextStyle(
                                color: Color(0xfffe6929), fontSize: 12)),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/graphics.png', scale: 4),
                                  const SizedBox(height: 3.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Logo/Graphics\nDesign',
                                      style: TextStyle(fontSize: 8))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/cac.png', scale: 4),
                                  const SizedBox(height: 5.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Register Your\nBusiness',
                                      style: TextStyle(fontSize: 8))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/crypto.png', scale: 4),
                                  const SizedBox(height: 4),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Buy/Sell\nCrypto',
                                      style: TextStyle(fontSize: 8))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/business-plan.png',
                                      scale: 4),
                                  const SizedBox(height: 3.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Buy Business Idea\n/Business Plan',
                                      style: TextStyle(fontSize: 8))
                                ],
                              ),
                            ),
                          ]),
                      const SizedBox(height: 40),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/business-mentorship.png',
                                      scale: 4),
                                  const SizedBox(height: 2),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Get Business\nMentorship',
                                      style: TextStyle(fontSize: 8))
                                ],
                              ),
                            ),
                            const SizedBox(width: 24),
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/writing-plan.png',
                                      scale: 4),
                                  const SizedBox(height: 3.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Business Plan\nWriting',
                                      style: TextStyle(fontSize: 8))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 17,
                            ),
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/content.png', scale: 4),
                                  const SizedBox(height: 3.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Pitch Deck\n/Pitch Content',
                                      style: TextStyle(fontSize: 8))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/writing-content.png',
                                      scale: 4),
                                  const SizedBox(height: 4),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Content/Copy\nWriting',
                                      style: TextStyle(fontSize: 8))
                                ],
                              ),
                            ),
                          ]),
                      const SizedBox(height: 40),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/website.png', scale: 4),
                                  const SizedBox(height: 2),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'I need a\nWebsite',
                                      style: TextStyle(fontSize: 8))
                                ],
                              ),
                            ),
                            const SizedBox(width: 26),
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/form.png', scale: 4),
                                  const SizedBox(height: 3.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'I need a\ngoogle form',
                                      style: TextStyle(fontSize: 8))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/verify.png', scale: 4),
                                  const SizedBox(height: 3.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Verify Social\nMedia Account',
                                      style: TextStyle(fontSize: 8))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/monetize.png', scale: 4),
                                  const SizedBox(height: 4),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Monetize Social\nMedia Account',
                                      style: TextStyle(fontSize: 8))
                                ],
                              ),
                            ),
                          ])
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                const Divider(thickness: 1.0, color: Color(0xff092e57)),
                const SizedBox(height: 60),
                const Text('Special Services 2',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff092e57),
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 30),
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xff092e57),
                        ),
                        borderRadius: BorderRadius.circular(30.0)),
                    width: 320,
                    height: 280,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                child: Column(
                                  children: [
                                    Image.asset('assets/email-list.png',
                                        scale: 4),
                                    const SizedBox(height: 3.0),
                                    const Text(
                                        textAlign: TextAlign.center,
                                        'Get Custom\nEmail List',
                                        style: TextStyle(fontSize: 8))
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                child: Column(
                                  children: [
                                    Image.asset('assets/ads.png', scale: 4),
                                    const SizedBox(height: 5.0),
                                    const Text(
                                        textAlign: TextAlign.center,
                                        'Social Media\nAd Setup',
                                        style: TextStyle(fontSize: 8))
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                child: Column(
                                  children: [
                                    Image.asset('assets/accounts.png',
                                        scale: 4),
                                    const SizedBox(height: 4),
                                    const Text(
                                        textAlign: TextAlign.center,
                                        'Buy Social Media\nAccounts',
                                        style: TextStyle(fontSize: 8))
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                child: Column(
                                  children: [
                                    Image.asset('assets/management.png',
                                        scale: 4),
                                    const SizedBox(height: 3.0),
                                    const Text(
                                        textAlign: TextAlign.center,
                                        'Social Media\nManagement',
                                        style: TextStyle(fontSize: 8))
                                  ],
                                ),
                              ),
                            ]),
                        const SizedBox(height: 40),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                child: Column(
                                  children: [
                                    Image.asset('assets/numbers.png', scale: 4),
                                    const SizedBox(height: 2),
                                    const Text(
                                        textAlign: TextAlign.center,
                                        'Get International\nNumbers',
                                        style: TextStyle(fontSize: 8))
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              InkWell(
                                child: Column(
                                  children: [
                                    Image.asset('assets/international.png',
                                        scale: 4),
                                    const SizedBox(height: 3.0),
                                    const Text(
                                        textAlign: TextAlign.center,
                                        'International\nBusiness\nRegistration',
                                        style: TextStyle(fontSize: 8))
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              InkWell(
                                child: Column(
                                  children: [
                                    Image.asset('assets/SMEDEN.png', scale: 4),
                                    const SizedBox(height: 3.0),
                                    const Text(
                                        textAlign: TextAlign.center,
                                        'NAFDAC/SMEDEN\nRegistration',
                                        style: TextStyle(fontSize: 8))
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              InkWell(
                                child: Column(
                                  children: [
                                    Image.asset('assets/patent.png', scale: 4),
                                    const SizedBox(height: 4),
                                    const Text(
                                        textAlign: TextAlign.center,
                                        "Patent and other\nCertifications",
                                        style: TextStyle(fontSize: 8))
                                  ],
                                ),
                              ),
                            ])
                      ],
                    )),
                const SizedBox(height: 150),
                Container(
                    color: const Color(0xff092e57),
                    child: Column(children: [
                      const SizedBox(height: 10),
                      const Text("Send a DM: 09012345678",
                          style: TextStyle(color: Colors.white)),
                      const SizedBox(height: 15),
                      const Text("Follow us on",
                          style: TextStyle(color: Colors.white, fontSize: 10)),
                      const SizedBox(height: 10),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
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
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white)),
                            SizedBox(height: 10)
                          ])
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
