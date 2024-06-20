import 'package:flutter/material.dart';
import 'package:anydrawer/anydrawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nano_influencers/screens/task.dart';

class SocialMediaService extends StatefulWidget {
  const SocialMediaService({super.key});

  @override
  State<SocialMediaService> createState() => _SocialMediaServiceState();
}

class _SocialMediaServiceState extends State<SocialMediaService> {
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
                const SizedBox(height: 30),
                const Text('Social Media Services',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff092e57),
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff092e57)),
                      borderRadius: BorderRadius.circular(30.0)),
                  width: 320,
                  height: 440,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 5.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text('Select Platform',
                            style: TextStyle(
                                color: Color(0xfffe6929), fontSize: 12)),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const TaskScreen()),
                                );
                              },
                              child: Column(
                                children: [
                                  Image.asset('assets/facebook.png', scale: 4),
                                  const SizedBox(height: 3.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Facebook',
                                      style: TextStyle(fontSize: 12))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/youtube.png', scale: 4),
                                  const SizedBox(height: 5.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Youtube',
                                      style: TextStyle(fontSize: 12))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/twitter.png', scale: 4),
                                  const SizedBox(height: 4),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Twitter',
                                      style: TextStyle(fontSize: 12))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/whatsapp.png', scale: 4),
                                  const SizedBox(height: 3.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'WhatsApp',
                                      style: TextStyle(fontSize: 12))
                                ],
                              ),
                            ),
                          ]),
                      const SizedBox(height: 30),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/insta.png', scale: 4),
                                  const SizedBox(height: 2),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Instagram',
                                      style: TextStyle(fontSize: 12))
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/telegram.png', scale: 4),
                                  const SizedBox(height: 3.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Telegram',
                                      style: TextStyle(fontSize: 12))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/tiktok.png', scale: 4),
                                  const SizedBox(height: 3.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'TikTok',
                                      style: TextStyle(fontSize: 12))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/linkedin.png', scale: 4),
                                  const SizedBox(height: 4),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'LinkedIn',
                                      style: TextStyle(fontSize: 12))
                                ],
                              ),
                            ),
                          ]),
                      const SizedBox(height: 30),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/gmail.png', scale: 4),
                                  const SizedBox(height: 2),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Gmail',
                                      style: TextStyle(fontSize: 12))
                                ],
                              ),
                            ),
                            const SizedBox(width: 22),
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/snapchat.png', scale: 4),
                                  const SizedBox(height: 3.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Snapchat',
                                      style: TextStyle(fontSize: 12))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/discord.png', scale: 4),
                                  const SizedBox(height: 3.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Discord',
                                      style: TextStyle(fontSize: 12))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/messenger.png', scale: 4),
                                  const SizedBox(height: 4),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Messenger',
                                      style: TextStyle(fontSize: 12))
                                ],
                              ),
                            ),
                          ]),
                      const SizedBox(height: 30),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/audiomack.png', scale: 4),
                                  const SizedBox(height: 2),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Audiomack',
                                      style: TextStyle(fontSize: 12))
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/spotify.png', scale: 4),
                                  const SizedBox(height: 3.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Spotify',
                                      style: TextStyle(fontSize: 12))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/boomplay.png', scale: 4),
                                  const SizedBox(height: 3.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Boomplay',
                                      style: TextStyle(fontSize: 12))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/more.png', scale: 4),
                                  const SizedBox(height: 4),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      "Couldn't find your\nplatform, (Create\nCustom task)",
                                      style: TextStyle(fontSize: 8))
                                ],
                              ),
                            ),
                          ])
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                const Divider(thickness: 1.0, color: Color(0xff092e57)),
                const SizedBox(height: 40),
                Container(
                    width: 320,
                    height: 150,
                    decoration: BoxDecoration(
                        color: const Color(0xffd1cbcb),
                        border: Border.all(color: const Color(0xff092e57)),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: const Center(
                        child: Text(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                            softWrap: true,
                            "Didn't find the platform that you\nneeded our services for? Don't\nworry, Create custom order tailored\nto the kind of platform."))),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    fixedSize: const Size(250, 50),
                    backgroundColor: const Color(0xff092e57),
                  ),
                  child: const Text('Create Custom Task',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 20),
                const SizedBox(
                  width: 320,
                  child: Text(
                      textAlign: TextAlign.center,
                      "You can now customise your order to your taste",
                      style: TextStyle(fontSize: 12)),
                ),
                const SizedBox(height: 40),
                const Divider(thickness: 1.0, color: Color(0xff092e57)),
                const SizedBox(height: 80),
                const Text('Highly Recommended (Try for free now)',
                    style: TextStyle(
                        color: Color(0xffcb2029),
                        fontWeight: FontWeight.bold,
                        fontSize: 10)),
                const SizedBox(height: 5),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xfff05515),
                      ),
                      borderRadius: BorderRadius.circular(30.0)),
                  width: 320,
                  height: 300,
                  child: Center(
                    child: Column(
                      children: [
                        const SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            fixedSize: const Size(250, 60),
                            backgroundColor: const Color(0xff9e1d22),
                          ),
                          child: const Text('Subscription',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(height: 30),
                        const Text(
                            style: TextStyle(
                                color: Color(0xff008000),
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                            textAlign: TextAlign.center,
                            softWrap: true,
                            "you don't have to buy likes, comments and shares\nevery single time you make a post on your page or\ntimeline with random users"),
                        const SizedBox(height: 20),
                        const Text(
                            style: TextStyle(
                                color: Color(0xfff05515),
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            softWrap: true,
                            "Click on the subscribe button to use the followers\nyou buy on nano-influencers as your organic\nengagement engines. They would like, comment\nand share (to real contacts), everytime you make a\nnew post on your Page/Timeline.")
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 50),
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
