import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:nano_influencers/widgets/auth_dialog.dart';
import 'package:youtube_player_iframe_plus/youtube_player_iframe_plus.dart';
import 'package:nano_influencers/screens/social_media_service.dart';
import 'package:nano_influencers/screens/special_services_screen.dart';
import 'package:nano_influencers/screens/custom_order_screen.dart';
import 'package:nano_influencers/screens/task.dart';
import 'package:anydrawer/anydrawer.dart';

class SignedOut extends StatefulWidget {
  const SignedOut({super.key});

  @override
  State<SignedOut> createState() => _SignedOutState();
}

class _SignedOutState extends State<SignedOut> {
  late YoutubePlayerController _controller;
  bool isDrawerOpen = false;
  bool isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'OHz0xIR8uwI',
      params: const YoutubePlayerParams(
          autoPlay: false, showFullscreenButton: false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                const SizedBox(height: 20),
                const SizedBox(
                  width: 300,
                  child: Text(
                    style:
                        TextStyle(fontSize: 9.9, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    softWrap: true,
                    'watch the video below to understand the various services\nand how to place order',
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                    width: 300,
                    height: 150,
                    child: YoutubePlayerIFramePlus(
                      controller: _controller,
                      aspectRatio: 16 / 9,
                    )),

                const SizedBox(height: 40),
                //YoutubePlayer(
                //   controller: _controller,
                //    showVideoProgressIndicator: true,
                //  ),
                const Text('Buy social media engagements',
                    style: TextStyle(color: Color(0xff092e57))),

                const SizedBox(
                  width: 320,
                  child: Text(
                      textAlign: TextAlign.center,
                      softWrap: true,
                      '(let real people perfom ANY task for you on any\nsocial media platform).',
                      style: TextStyle(color: Color(0xff9e1d22), fontSize: 12)),
                ),
                const SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff092e57)),
                      borderRadius: BorderRadius.circular(30.0)),
                  width: 320,
                  height: 220,
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
                      const SizedBox(height: 25),
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
                          ])
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SocialMediaService()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(180, 50),
                    backgroundColor: const Color(0xffcb2029),
                  ),
                  child: const Text('See More',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 40),
                const Divider(thickness: 1.0, color: Color(0xff092e57)),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CustomOrder()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    fixedSize: const Size(300, 60),
                    backgroundColor: const Color(0xff092e57),
                  ),
                  child: const Text('Create Custom Task',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 20),
                const SizedBox(
                  width: 300,
                  child: Text(
                      textAlign: TextAlign.center,
                      softWrap: true,
                      "You can now customise your order to your diverse needs.",
                      style: TextStyle(fontSize: 12)),
                ),
                const SizedBox(height: 40),
                const Divider(thickness: 1.0, color: Color(0xff092e57)),
                const SizedBox(height: 40),
                const Text('Special Services',
                    style: TextStyle(
                        color: Color(0xff092e57),
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff092e57)),
                      borderRadius: BorderRadius.circular(30.0)),
                  width: 320,
                  height: 220,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 5.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text('Select Service',
                            style: TextStyle(
                              color: Color(0xfffe6929),
                              fontSize: 12,
                            )),
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
                              child: Column(
                                children: [
                                  Image.asset('assets/graphics.png', scale: 4),
                                  const SizedBox(height: 3.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Logo/Graphics\nDesign',
                                      style: TextStyle(fontSize: 8)),
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
                                  const SizedBox(height: 3.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'RegisterYour\nBusiness',
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
                                  const SizedBox(height: 3.0),
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
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Buy Business Idea\n/Business Plan',
                                      style: TextStyle(fontSize: 8))
                                ],
                              ),
                            ),
                          ]),
                      const SizedBox(height: 25),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/business-mentorship.png',
                                      scale: 4),
                                  const SizedBox(height: 3.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Get Business\nMentorship',
                                      style: TextStyle(fontSize: 8)),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
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
                              width: 20,
                            ),
                            InkWell(
                              child: Column(
                                children: [
                                  Image.asset('assets/content.png', scale: 4),
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
                            Column(
                              children: [
                                Image.asset('assets/writing-content.png',
                                    scale: 4),
                                const Text(
                                    textAlign: TextAlign.center,
                                    'Content/Copy\nWriting',
                                    style: TextStyle(fontSize: 8))
                              ],
                            ),
                          ])
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SpecialService()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(180, 50),
                    backgroundColor: const Color(0xff373737),
                  ),
                  child: const Text('See More',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
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
