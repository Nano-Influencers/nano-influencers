import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:anydrawer/anydrawer.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  bool isDrawerOpen = false;
  bool isExpanded = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  bool isChecked6 = false;
  bool isChecked7 = false;
  bool isCheckedPost = false;
  bool isCheckedComment = false;
  bool isClicked1 = false;
  bool isClicked2 = false;
  bool isClicked3 = false;
  bool isClicked4 = false;
  bool isClicked5 = false;
  bool isClicked6 = false;
  bool isClicked7 = false;
  bool isClicked8 = false;
  bool isClicked9 = false;
  bool isClicked10 = false;
  bool isClicked11 = false;
  bool isClicked12 = false;
  String facebookTask = 'like';
  String? _character = 'Value';
  String? _privacyPolicy = 'Value';
  String? _shareTask = 'Value';
  String? _shareTask2 = 'Value';
  bool reqClicked1 = false;
  bool reqClicked2 = false;
  bool reqClicked3 = false;
  bool reqClicked4 = false;
  bool reqClicked5 = false;
  bool reqClicked6 = false;
  bool reqClicked7 = false;
  bool reqClicked8 = false;
  bool reqClicked9 = false;
  bool reqClicked10 = false;
  bool reqClicked11 = false;
  bool reqClicked12 = false;

  TextEditingController costController = TextEditingController();
  TextEditingController linkController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController totalController = TextEditingController();
  TextEditingController qty1Controller = TextEditingController();
  TextEditingController qty2Controller = TextEditingController();
  TextEditingController qty3Controller = TextEditingController();
  TextEditingController qty4Controller = TextEditingController();
  TextEditingController qty5Controller = TextEditingController();
  TextEditingController qty6Controller = TextEditingController();
  TextEditingController qty7Controller = TextEditingController();
  TextEditingController shareTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //state field
    final stateField = TextFormField(
        autofocus: false,
        controller: stateController,
        keyboardType: TextInputType.text,
        validator: (val) => val!.isEmpty ? 'Fill out this field' : null,
        onSaved: (val) {
          stateController.text = val!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))));

    //qty field
    final totalField = TextFormField(
        autofocus: false,
        controller: totalController,
        keyboardType: TextInputType.text,
        validator: (val) => val!.isEmpty ? 'Fill out this field' : null,
        onSaved: (val) {
          totalController.text = val!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))));

    //cost field
    final costField = TextFormField(
        autofocus: false,
        controller: costController,
        keyboardType: TextInputType.text,
        validator: (val) => val!.isEmpty ? 'Fill out this field' : null,
        onSaved: (val) {
          costController.text = val!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))));
    //link field
    final linkField = TextFormField(
        autofocus: false,
        controller: linkController,
        keyboardType: TextInputType.text,
        validator: (val) => val!.isEmpty ? 'Fill out this field' : null,
        onSaved: (val) {
          linkController.text = val!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))));

    //shareText field
    final shareTextField = TextFormField(
        maxLines: 20,
        autofocus: false,
        controller: shareTextController,
        keyboardType: TextInputType.text,
        validator: (val) => val!.isEmpty ? 'Fill out this field' : null,
        onSaved: (val) {
          shareTextController.text = val!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))));

    return Scaffold(
      appBar: AppBar(
        //  automaticallyImplyLeading: false,
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
                const Text('I need Facebook: ',
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
                  height: 500,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isClicked1 = !isClicked1;
                                  if (isClicked1) {
                                    facebookTask = 'like';
                                  } else {
                                    facebookTask = 'like';
                                  }
                                });
                              },
                              child: Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                        style: facebookTask == 'like'
                                            ? BorderStyle.solid
                                            : BorderStyle.none,
                                      )),
                                      child: Image.asset('assets/like.png',
                                          scale: 4)),
                                  const SizedBox(height: 3.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Like/others',
                                      style: TextStyle(fontSize: 8))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isClicked2 = !isClicked2;
                                  if (isClicked2) {
                                    facebookTask = 'request';
                                  } else {
                                    facebookTask = 'like';
                                  }
                                });
                              },
                              child: Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                        style: facebookTask == 'request'
                                            ? BorderStyle.solid
                                            : BorderStyle.none,
                                      )),
                                      child: Image.asset('assets/request.png',
                                          scale: 4)),
                                  const SizedBox(height: 5.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Friend Request',
                                      style: TextStyle(fontSize: 8))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isClicked3 = !isClicked3;
                                  if (isClicked3) {
                                    facebookTask = 'shares';
                                  } else {
                                    facebookTask = 'like';
                                  }
                                });
                              },
                              child: Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                        style: facebookTask == 'shares'
                                            ? BorderStyle.solid
                                            : BorderStyle.none,
                                      )),
                                      child: Image.asset('assets/share.png',
                                          scale: 4)),
                                  const SizedBox(height: 4),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Shares',
                                      style: TextStyle(fontSize: 8))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isClicked4 = !isClicked4;
                                  if (isClicked4) {
                                    facebookTask = 'comments';
                                  } else {
                                    facebookTask = 'like';
                                  }
                                });
                              },
                              child: Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                        style: facebookTask == 'comments'
                                            ? BorderStyle.solid
                                            : BorderStyle.none,
                                      )),
                                      child: Image.asset('assets/comment.png',
                                          scale: 4)),
                                  const SizedBox(height: 3.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Comments',
                                      style: TextStyle(fontSize: 8))
                                ],
                              ),
                            ),
                          ]),
                      const SizedBox(height: 30),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isClicked5 = !isClicked5;
                                  if (isClicked5) {
                                    facebookTask = 'live';
                                  } else {
                                    facebookTask = 'like';
                                  }
                                });
                              },
                              child: Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                        style: facebookTask == 'live'
                                            ? BorderStyle.solid
                                            : BorderStyle.none,
                                      )),
                                      child: Image.asset('assets/live.png',
                                          scale: 4)),
                                  const SizedBox(height: 2),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Live Participants',
                                      style: TextStyle(fontSize: 8))
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isClicked6 = !isClicked6;
                                  if (isClicked6) {
                                    facebookTask = 'followers';
                                  } else {
                                    facebookTask = 'like';
                                  }
                                });
                              },
                              child: Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                        style: facebookTask == 'followers'
                                            ? BorderStyle.solid
                                            : BorderStyle.none,
                                      )),
                                      child: Image.asset('assets/followers.png',
                                          scale: 4)),
                                  const SizedBox(height: 3.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Followers',
                                      style: TextStyle(fontSize: 8))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isClicked7 = !isClicked7;
                                  if (isClicked7) {
                                    facebookTask = 'story';
                                  } else {
                                    facebookTask = 'like';
                                  }
                                });
                              },
                              child: Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                        style: facebookTask == 'story'
                                            ? BorderStyle.solid
                                            : BorderStyle.none,
                                      )),
                                      child: Image.asset('assets/story.png',
                                          scale: 4)),
                                  const SizedBox(height: 3.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Story View',
                                      style: TextStyle(fontSize: 8))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isClicked8 = !isClicked8;
                                  if (isClicked8) {
                                    facebookTask = 'video';
                                  } else {
                                    facebookTask = 'like';
                                  }
                                });
                              },
                              child: Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                        style: facebookTask == 'video'
                                            ? BorderStyle.solid
                                            : BorderStyle.none,
                                      )),
                                      child: Image.asset('assets/videoview.png',
                                          scale: 4)),
                                  const SizedBox(height: 4),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Video Viewers',
                                      style: TextStyle(fontSize: 8))
                                ],
                              ),
                            ),
                          ]),
                      const SizedBox(height: 30),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(width: 10),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isClicked9 = !isClicked9;
                                  if (isClicked9) {
                                    facebookTask = 'report';
                                  } else {
                                    facebookTask = 'like';
                                  }
                                });
                              },
                              child: Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                        style: facebookTask == 'report'
                                            ? BorderStyle.solid
                                            : BorderStyle.none,
                                      )),
                                      child: Image.asset('assets/report.png',
                                          scale: 4)),
                                  const SizedBox(height: 2),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Report(Reporting\nan account etc.)',
                                      style: TextStyle(fontSize: 8))
                                ],
                              ),
                            ),
                            const SizedBox(width: 18),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isClicked10 = !isClicked10;
                                  if (isClicked10) {
                                    facebookTask = 'facebook';
                                  } else {
                                    facebookTask = 'like';
                                  }
                                });
                              },
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                      style: facebookTask == 'facebook'
                                          ? BorderStyle.solid
                                          : BorderStyle.none,
                                    )),
                                    child: Image.asset(
                                        'assets/facebookshare.png',
                                        scale: 4),
                                  ),
                                  const SizedBox(height: 3.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Facebook\nShare',
                                      style: TextStyle(fontSize: 8))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isClicked11 = !isClicked11;
                                  if (isClicked11) {
                                    facebookTask = 'community';
                                  } else {
                                    facebookTask = 'like';
                                  }
                                });
                              },
                              child: Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                        style: facebookTask == 'community'
                                            ? BorderStyle.solid
                                            : BorderStyle.none,
                                      )),
                                      child: Image.asset('assets/community.png',
                                          scale: 4)),
                                  const SizedBox(height: 3.0),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Join Group/\ncommunity',
                                      style: TextStyle(fontSize: 8))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isClicked12 = !isClicked12;
                                  if (isClicked12) {
                                    facebookTask = 'custom';
                                  } else {
                                    facebookTask = 'like';
                                  }
                                });
                              },
                              child: Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                        style: facebookTask == 'more'
                                            ? BorderStyle.solid
                                            : BorderStyle.none,
                                      )),
                                      child: Image.asset('assets/account.png',
                                          scale: 4)),
                                  const SizedBox(height: 4),
                                  const Text(
                                      textAlign: TextAlign.center,
                                      'Accounts\n(Buy Facebook\naccounts/others)',
                                      style: TextStyle(fontSize: 6))
                                ],
                              ),
                            ),
                          ]),
                      const SizedBox(height: 30),
                      const Text('Highly Recommended (Try for free now)',
                          style: TextStyle(
                              color: Color(0xffcb2029),
                              fontWeight: FontWeight.bold,
                              fontSize: 8)),
                      const SizedBox(height: 5),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xfff05515),
                            ),
                            borderRadius: BorderRadius.circular(30.0)),
                        width: 160,
                        height: 150,
                        child: Column(
                          children: [
                            const SizedBox(height: 15),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                fixedSize: const Size(125, 30),
                                backgroundColor: const Color(0xff9e1d22),
                              ),
                              child: const Text('Subscription',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold)),
                            ),
                            const SizedBox(height: 15),
                            const Text(
                                style: TextStyle(
                                    color: Color(0xff008000),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 5),
                                textAlign: TextAlign.center,
                                softWrap: true,
                                "you don't have to buy likes, comments and shares\nevery single time you make a post on your page or\ntimeline with random users"),
                            const SizedBox(height: 10),
                            const Text(
                                style: TextStyle(
                                    color: Color(0xfff05515),
                                    fontSize: 5,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                                softWrap: true,
                                "Click on the subscribe button to use the followers\nyou buy on nano-influencers as your organic\nengagement engines. They would like, comment\nand share (to real contacts), everytime you make a\nnew post on your Page/Timeline.")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 3),
                TextButton(
                    child: const Text(
                        'Click here to watch video on how to place the engagement order.',
                        style: TextStyle(
                            fontSize: 8,
                            color: Color(0xffff0000),
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xffff0000))),
                    onPressed: () {}),
                const SizedBox(height: 20),
                facebookTask == 'like'
                    ? Column(children: [
                        const Text(
                            'What kind of Reaction(s) do you want on your post',
                            style: TextStyle(
                                color: Color(0xff092e57),
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(height: 10),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: isChecked1,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked1 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text('Love ♥️ (Cost N10)',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(width: 40),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 40),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N500',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: isChecked2,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked2 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text('Like 👍 (Cost N10)',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(width: 40),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 38),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N500',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: isChecked3,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked3 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text('Wow 😲 (Cost N10)',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(width: 32),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 40),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N500',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: isChecked4,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked4 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text('Care (Cost N10)',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(width: 48),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 40),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N500',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: isChecked5,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked5 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text('Funny 😂(Cost N15)',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(width: 30),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 40),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N500',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: isChecked6,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked6 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text('Sad😢(Cost N15)',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(width: 43),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 40),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N500',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: isChecked7,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked7 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text('Angry😠(Cost N20)',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(width: 30),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 40),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N500',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        const SizedBox(height: 10),
                        const SizedBox(
                          width: 320,
                          child: Text('I want the reaction to happen on a:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff092e57),
                                  fontSize: 12)),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: 360,
                          child: Column(children: [
                            Row(children: [
                              Checkbox(
                                shape: const CircleBorder(),
                                onChanged: (bool? value) {
                                  setState(() {
                                    isCheckedPost = value!;
                                  });
                                },
                                value: isCheckedPost,
                              ),
                              const SizedBox(width: 5),
                              const Text('Post',
                                  style: TextStyle(fontSize: 10)),
                            ]),
                            Row(children: [
                              Checkbox(
                                shape: const CircleBorder(),
                                onChanged: (bool? value) {
                                  setState(() {
                                    isCheckedComment = value!;
                                  });
                                },
                                value: isCheckedComment,
                              ),
                              const SizedBox(width: 5),
                              const Text('Comment Session',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(width: 10),
                              const Column(
                                children: [
                                  SizedBox(
                                      height: 20,
                                      width: 90,
                                      child: TextField()),
                                  Text("Commenter's handle",
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: Color(0xff9e1d22)))
                                ],
                              ),
                              const SizedBox(width: 5),
                              const Text('and',
                                  style: TextStyle(
                                      fontSize: 10, color: Color(0xffff6633))),
                              const SizedBox(width: 5),
                              const Column(
                                children: [
                                  SizedBox(
                                      height: 20,
                                      width: 90,
                                      child: TextField()),
                                  Text("Comment",
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: Color(0xff9e1d22)))
                                ],
                              ),
                            ]),
                          ]),
                        ),
                      ])
                    : const SizedBox(height: 0),
                facebookTask == 'request'
                    ? Column(children: [
                        const SizedBox(
                          width: 320,
                          child: Text('I want: ',
                              style: TextStyle(
                                  color: Color(0xff092e57),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: reqClicked1,
                                onChanged: (bool? value) {
                                  setState(() {
                                    reqClicked1 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text('Female Friends',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(width: 40),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                            ])),
                        const SizedBox(height: 10),
                        const SizedBox(
                            width: 320,
                            child: Text(
                                "(Female) The Account sending the friend request should have:",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff092e57)))),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: reqClicked2,
                                onChanged: (bool? value) {
                                  setState(() {
                                    reqClicked2 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                  softWrap: true,
                                  'DEFAULT (Cost N10) any type of\nfemale account (unspecified).',
                                  style: TextStyle(fontSize: 6)),
                              const SizedBox(width: 26),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 30),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N500',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: reqClicked3,
                                onChanged: (bool? value) {
                                  setState(() {
                                    reqClicked3 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                  softWrap: true,
                                  '100-499 friends (Cost N20)',
                                  style: TextStyle(fontSize: 6)),
                              const SizedBox(width: 40),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 30),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N1000',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: reqClicked4,
                                onChanged: (bool? value) {
                                  setState(() {
                                    reqClicked4 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                  softWrap: true,
                                  '500-999 friends (Cost N30)',
                                  style: TextStyle(fontSize: 6)),
                              const SizedBox(width: 39),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 30),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N1500',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: reqClicked5,
                                onChanged: (bool? value) {
                                  setState(() {
                                    reqClicked5 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                  softWrap: true,
                                  '1,000-1,999 friends (cost N40)',
                                  style: TextStyle(fontSize: 6)),
                              const SizedBox(width: 33),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 30),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N2000',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: reqClicked6,
                                onChanged: (bool? value) {
                                  setState(() {
                                    reqClicked6 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                  softWrap: true,
                                  '2,000-4,500+ friends (cost N50)',
                                  style: TextStyle(fontSize: 6)),
                              const SizedBox(width: 27),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 30),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N2500',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        const SizedBox(height: 30),
                        SizedBox(
                            width: 340,
                            child: Row(children: [
                              Checkbox(
                                value: reqClicked7,
                                onChanged: (bool? value) {
                                  setState(() {
                                    reqClicked7 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text('Male Friends',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(width: 40),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                            ])),
                        const SizedBox(height: 10),
                        const SizedBox(
                            width: 320,
                            child: Text(
                                "(Male) The Account sending the friend request should have:",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff092e57)))),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: reqClicked8,
                                onChanged: (bool? value) {
                                  setState(() {
                                    reqClicked8 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                  softWrap: true,
                                  'DEFAULT (Cost N10) any type of\nfemale account (unspecified).',
                                  style: TextStyle(fontSize: 6)),
                              const SizedBox(width: 26),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 30),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N500',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: reqClicked9,
                                onChanged: (bool? value) {
                                  setState(() {
                                    reqClicked9 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                  softWrap: true,
                                  '100-499 friends (Cost N20)',
                                  style: TextStyle(fontSize: 6)),
                              const SizedBox(width: 40),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 30),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N1000',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: reqClicked10,
                                onChanged: (bool? value) {
                                  setState(() {
                                    reqClicked10 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                  softWrap: true,
                                  '500-999 friends (Cost N30)',
                                  style: TextStyle(fontSize: 6)),
                              const SizedBox(width: 39),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 30),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N1500',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: reqClicked11,
                                onChanged: (bool? value) {
                                  setState(() {
                                    reqClicked11 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                  softWrap: true,
                                  '1,000-1,999 friends (cost N40)',
                                  style: TextStyle(fontSize: 6)),
                              const SizedBox(width: 33),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 30),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N2000',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: reqClicked12,
                                onChanged: (bool? value) {
                                  setState(() {
                                    reqClicked12 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                  softWrap: true,
                                  '2,000-4,500+ friends (cost N50)',
                                  style: TextStyle(fontSize: 6)),
                              const SizedBox(width: 27),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 30),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N2500',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                      ])
                    : const SizedBox(height: 0),
                facebookTask == 'shares'
                    ? Column(children: [
                        const SizedBox(
                          width: 320,
                          child: Text(
                              'Where do you want us to share your link/image or\nVideo',
                              style: TextStyle(
                                  color: Color(0xff092e57),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: reqClicked1,
                                onChanged: (bool? value) {
                                  setState(() {
                                    reqClicked1 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                  softWrap: true,
                                  'Whatsapp (Cost N20)',
                                  style: TextStyle(fontSize: 8)),
                              const SizedBox(width: 31),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 30),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N1000',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: reqClicked2,
                                onChanged: (bool? value) {
                                  setState(() {
                                    reqClicked2 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                  softWrap: true,
                                  'Facebook (Cost N20)',
                                  style: TextStyle(fontSize: 8)),
                              const SizedBox(width: 33),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 30),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N1000',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: reqClicked3,
                                onChanged: (bool? value) {
                                  setState(() {
                                    reqClicked3 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                  softWrap: true,
                                  'Twitter (Cost N20)',
                                  style: TextStyle(fontSize: 8)),
                              const SizedBox(width: 47),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 30),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N1000',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: reqClicked4,
                                onChanged: (bool? value) {
                                  setState(() {
                                    reqClicked4 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                  softWrap: true,
                                  'LinkedIn (Cost N20)',
                                  style: TextStyle(fontSize: 8)),
                              const SizedBox(width: 41),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 30),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N1000',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: reqClicked5,
                                onChanged: (bool? value) {
                                  setState(() {
                                    reqClicked5 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                  softWrap: true,
                                  'YouTube (Cost N20) ',
                                  style: TextStyle(fontSize: 8)),
                              const SizedBox(width: 37),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 30),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N1000',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: reqClicked6,
                                onChanged: (bool? value) {
                                  setState(() {
                                    reqClicked6 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                  softWrap: true,
                                  'Instagram (Cost N20)',
                                  style: TextStyle(fontSize: 8)),
                              const SizedBox(width: 33),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 30),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N1000',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: reqClicked7,
                                onChanged: (bool? value) {
                                  setState(() {
                                    reqClicked7 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                  softWrap: true,
                                  'Tik Tok (Cost N20)',
                                  style: TextStyle(fontSize: 8)),
                              const SizedBox(width: 48),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 30),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N1000',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: reqClicked8,
                                onChanged: (bool? value) {
                                  setState(() {
                                    reqClicked8 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                  softWrap: true,
                                  'Telegram (Cost N20)',
                                  style: TextStyle(fontSize: 8)),
                              const SizedBox(width: 37),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 30),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N1000',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: reqClicked9,
                                onChanged: (bool? value) {
                                  setState(() {
                                    reqClicked9 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                  softWrap: true,
                                  'SnapChat (Cost N20)',
                                  style: TextStyle(fontSize: 8)),
                              const SizedBox(width: 36),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 30),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N1000',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: reqClicked10,
                                onChanged: (bool? value) {
                                  setState(() {
                                    reqClicked10 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                  softWrap: true,
                                  'Messenger (Cost N20)',
                                  style: TextStyle(fontSize: 8)),
                              const SizedBox(width: 33),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 30),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N1000',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: reqClicked11,
                                onChanged: (bool? value) {
                                  setState(() {
                                    reqClicked11 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                  softWrap: true,
                                  'Discord (Cost N20)',
                                  style: TextStyle(fontSize: 8)),
                              const SizedBox(width: 46),
                              const Text('Qty ',
                                  style: TextStyle(fontSize: 10)),
                              const SizedBox(
                                width: 40,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(width: 30),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Tot:',
                                      style: TextStyle(fontSize: 10),
                                      children: [
                                    TextSpan(
                                        text: 'N1000',
                                        style: TextStyle(
                                            color: Color(0xffff6633),
                                            fontSize: 10))
                                  ]))
                            ])),
                        const SizedBox(height: 20),
                        const SizedBox(
                            width: 320,
                            child: Row(
                              children: [
                                Text('What format',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    )),
                                SizedBox(width: 15),
                                Text(
                                    softWrap: true,
                                    "You can select Video or Audio or you can Select both.",
                                    style: TextStyle(
                                        fontSize: 7, color: Color(0xff008000)))
                              ],
                            )),
                        const SizedBox(height: 10),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: reqClicked12,
                                onChanged: (bool? value) {
                                  setState(() {
                                    reqClicked12 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                  softWrap: true,
                                  'Video',
                                  style: TextStyle(fontSize: 12)),
                            ])),
                        const SizedBox(height: 5),
                        const SizedBox(
                            width: 280,
                            child: Text(
                                softWrap: true,
                                "videos should not exceed more than 15mb or 3mins in a situation where your video exceeds 15mb or 3mins you can select 2 video upload or more by breaking the video into 2 or more parts or just compress video to a lesser quality.",
                                style: TextStyle(
                                    fontSize: 6, color: Color(0xffcb2029)))),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 320,
                          child: Row(children: [
                            const SizedBox(width: 10),
                            Radio(
                                onChanged: (String? value) {
                                  setState(() {
                                    _shareTask = value;
                                  });
                                },
                                value: 'second',
                                groupValue: _shareTask),
                            const SizedBox(width: 10),
                            const Text('1 video upload',
                                style: TextStyle(fontSize: 12)),
                            const SizedBox(width: 15),
                            const Text("(No charges applied)",
                                style: TextStyle(
                                    fontSize: 8, color: Color(0xffff6633)))
                          ]),
                        ),
                        SizedBox(
                          width: 320,
                          child: Row(children: [
                            const SizedBox(width: 10),
                            Radio(
                                onChanged: (String? value) {
                                  setState(() {
                                    _shareTask = value;
                                  });
                                },
                                value: 'first',
                                groupValue: _shareTask),
                            const SizedBox(width: 10),
                            const Text('2 video upload',
                                style: TextStyle(fontSize: 12)),
                            const SizedBox(width: 15),
                            const Text("(you’re charged 1.5x the original fee)",
                                style: TextStyle(
                                    fontSize: 8, color: Color(0xffff6633)))
                          ]),
                        ),
                        SizedBox(
                          width: 320,
                          child: Row(children: [
                            const SizedBox(width: 10),
                            Radio(
                                onChanged: (String? value) {
                                  setState(() {
                                    _shareTask = value;
                                  });
                                },
                                value: 'third',
                                groupValue: _shareTask),
                            const SizedBox(width: 10),
                            const Text('3 video upload',
                                style: TextStyle(fontSize: 12)),
                            const SizedBox(width: 15),
                            const Text("(you’re charged 2x the original fee)",
                                style: TextStyle(
                                    fontSize: 8, color: Color(0xffff6633)))
                          ]),
                        ),
                        SizedBox(
                          width: 320,
                          child: Row(children: [
                            const SizedBox(width: 10),
                            Radio(
                                onChanged: (String? value) {
                                  setState(() {
                                    _shareTask = value;
                                  });
                                },
                                value: 'fourth',
                                groupValue: _shareTask),
                            const SizedBox(width: 10),
                            const Text('4 video upload',
                                style: TextStyle(fontSize: 12)),
                            const SizedBox(width: 15),
                            const Text("(you’re charged 2.5x the original fee)",
                                style: TextStyle(
                                    fontSize: 8, color: Color(0xffff6633)))
                          ]),
                        ),
                        SizedBox(
                          width: 320,
                          child: Row(children: [
                            const SizedBox(width: 10),
                            Radio(
                                onChanged: (String? value) {
                                  setState(() {
                                    _shareTask = value;
                                  });
                                },
                                value: 'five',
                                groupValue: _shareTask),
                            const SizedBox(width: 10),
                            const Text('5 video upload',
                                style: TextStyle(fontSize: 12)),
                            const SizedBox(width: 15),
                            const Text("(you’re charged 3x the original fee)",
                                style: TextStyle(
                                    fontSize: 8, color: Color(0xffff6633)))
                          ]),
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(
                            width: 300,
                            child: Text(
                                softWrap: true,
                                'Upload the Video(s) here',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ))),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: const Icon(Icons.upload)),
                            const SizedBox(width: 180)
                          ],
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(
                            width: 320,
                            child: Text(
                                "Upload the Videos you want us to share here.",
                                style: TextStyle(
                                    fontSize: 6, color: Color(0xffff6633)))),
                        const SizedBox(height: 30),
                        SizedBox(
                            width: 320,
                            child: Row(
                              children: [
                                const Text('Link',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff092e57))),
                                const SizedBox(width: 30),
                                RichText(
                                    text: const TextSpan(
                                        text:
                                            'Drop  link you want us to attach to the video\nuploaded',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xff008000)),
                                        children: [
                                      TextSpan(
                                          text: '(Optional)',
                                          style: TextStyle(
                                              color: Color(0xff9e1d22),
                                              fontSize: 10))
                                    ]))
                              ],
                            )),
                        const SizedBox(height: 10),
                        SizedBox(width: 320, child: linkField),
                        const SizedBox(height: 5),
                        const SizedBox(
                            width: 300,
                            child: Text(
                                style: TextStyle(
                                    fontSize: 8, color: Color(0xff9e1d22)),
                                softWrap: true,
                                "Ensure that you drop the correct link here. ")),
                        const SizedBox(height: 30),
                        SizedBox(
                            width: 320,
                            child: Row(
                              children: [
                                const Text('Text',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff092e57))),
                                const SizedBox(width: 30),
                                RichText(
                                  text: const TextSpan(
                                    text:
                                        'Drop  text you want us to attach to the video\nuploaded',
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xff008000)),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: '(Optional)',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xff9e1d22))),
                                    ],
                                  ),
                                )
                              ],
                            )),
                        const SizedBox(height: 10),
                        SizedBox(
                            height: 100, width: 320, child: shareTextField),
                        const SizedBox(height: 5),
                        SizedBox(
                            width: 320,
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add_circle)),
                                const SizedBox(width: 5),
                                const Text(
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff008000)),
                                    softWrap: true,
                                    "Click the Plus icon to add more videos/ link and text"),
                              ],
                            )),
                        const SizedBox(height: 10),
                        SizedBox(
                            width: 320,
                            child: Row(children: [
                              Checkbox(
                                value: reqClicked12,
                                onChanged: (bool? value) {
                                  setState(() {
                                    reqClicked12 = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                  softWrap: true,
                                  'Images',
                                  style: TextStyle(fontSize: 12)),
                            ])),
                        const SizedBox(height: 5),
                        const SizedBox(
                            width: 280,
                            child: Text(
                                softWrap: true,
                                "Select the number of images you want us to share.",
                                style: TextStyle(
                                    fontSize: 6, color: Color(0xffcb2029)))),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 320,
                          child: Row(children: [
                            const SizedBox(width: 10),
                            Radio(
                                onChanged: (String? value) {
                                  setState(() {
                                    _shareTask2 = value;
                                  });
                                },
                                value: 'second',
                                groupValue: _shareTask2),
                            const SizedBox(width: 10),
                            const Text('1 Image upload',
                                style: TextStyle(fontSize: 12)),
                            const SizedBox(width: 14),
                            const Text("(No Charges Applied)",
                                style: TextStyle(
                                    fontSize: 8, color: Color(0xffff6633)))
                          ]),
                        ),
                        SizedBox(
                          width: 320,
                          child: Row(children: [
                            const SizedBox(width: 10),
                            Radio(
                                onChanged: (String? value) {
                                  setState(() {
                                    _shareTask2 = value;
                                  });
                                },
                                value: 'first',
                                groupValue: _shareTask2),
                            const SizedBox(width: 10),
                            const Text('2 Image upload',
                                style: TextStyle(fontSize: 12)),
                            const SizedBox(width: 14),
                            const Text("(No Charges Applied)",
                                style: TextStyle(
                                    fontSize: 8, color: Color(0xffff6633)))
                          ]),
                        ),
                        SizedBox(
                          width: 320,
                          child: Row(children: [
                            const SizedBox(width: 10),
                            Radio(
                                onChanged: (String? value) {
                                  setState(() {
                                    _shareTask2 = value;
                                  });
                                },
                                value: 'third',
                                groupValue: _shareTask2),
                            const SizedBox(width: 10),
                            const Text('3 Image upload',
                                style: TextStyle(fontSize: 12)),
                            const SizedBox(width: 14),
                            const Text("(No charges applied)",
                                style: TextStyle(
                                    fontSize: 8, color: Color(0xffff6633)))
                          ]),
                        ),
                        SizedBox(
                          width: 320,
                          child: Row(children: [
                            const SizedBox(width: 10),
                            Radio(
                                onChanged: (String? value) {
                                  setState(() {
                                    _shareTask2 = value;
                                  });
                                },
                                value: 'fourth',
                                groupValue: _shareTask2),
                            const SizedBox(width: 10),
                            const Text('4 Image upload',
                                style: TextStyle(fontSize: 12)),
                            const SizedBox(width: 14),
                            const Text("(you’re charged 1.5x the original fee)",
                                style: TextStyle(
                                    fontSize: 8, color: Color(0xffff6633)))
                          ]),
                        ),
                        SizedBox(
                          width: 320,
                          child: Row(children: [
                            const SizedBox(width: 10),
                            Radio(
                                onChanged: (String? value) {
                                  setState(() {
                                    _shareTask2 = value;
                                  });
                                },
                                value: 'five',
                                groupValue: _shareTask2),
                            const SizedBox(width: 10),
                            const Text('5 Image upload',
                                style: TextStyle(fontSize: 12)),
                            const SizedBox(width: 14),
                            const Text("(you’re charged 2x the original fee)",
                                style: TextStyle(
                                    fontSize: 8, color: Color(0xffff6633)))
                          ]),
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(
                            width: 300,
                            child: Text(
                                softWrap: true,
                                'Upload the Image(s) here',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ))),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: const Icon(Icons.upload)),
                            const SizedBox(width: 180)
                          ],
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(
                            width: 320,
                            child: Text(
                                "Upload the Image you want us to share here.",
                                style: TextStyle(
                                    fontSize: 6, color: Color(0xffff6633)))),
                        const SizedBox(height: 30),
                        SizedBox(
                            width: 320,
                            child: Row(
                              children: [
                                const Text('Link',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff092e57))),
                                const SizedBox(width: 30),
                                RichText(
                                    text: const TextSpan(
                                        text:
                                            'Drop  link you want us to attach to the image\nuploaded',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xff008000)),
                                        children: [
                                      TextSpan(
                                          text: '(Optional)',
                                          style: TextStyle(
                                              color: Color(0xff9e1d22),
                                              fontSize: 10))
                                    ]))
                              ],
                            )),
                        const SizedBox(height: 10),
                        SizedBox(width: 320, child: linkField),
                        const SizedBox(height: 5),
                        const SizedBox(
                            width: 300,
                            child: Text(
                                style: TextStyle(
                                    fontSize: 8, color: Color(0xff9e1d22)),
                                softWrap: true,
                                "Ensure that you drop the correct link here. ")),
                        const SizedBox(height: 30),
                        SizedBox(
                            width: 320,
                            child: Row(
                              children: [
                                const Text('Text',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff092e57))),
                                const SizedBox(width: 30),
                                RichText(
                                  text: const TextSpan(
                                    text:
                                        'Drop  link you want us to attach to the image\nuploaded',
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xff008000)),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: '(Optional)',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xff9e1d22))),
                                    ],
                                  ),
                                )
                              ],
                            )),
                        const SizedBox(height: 10),
                        SizedBox(
                            height: 100, width: 320, child: shareTextField),
                        const SizedBox(height: 5),
                        SizedBox(
                            width: 320,
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add_circle)),
                                const SizedBox(width: 5),
                                const Text(
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff008000)),
                                    softWrap: true,
                                    "Click the Plus icon to add more Images/ link and text"),
                              ],
                            )),
                      ])
                    : const SizedBox(height: 0),
                facebookTask == 'comments'
                    ? const Column()
                    : const SizedBox(height: 0),
                facebookTask == 'live'
                    ? const Column()
                    : const SizedBox(height: 0),
                facebookTask == 'followers'
                    ? const Column()
                    : const SizedBox(height: 0),
                facebookTask == 'story'
                    ? const Column()
                    : const SizedBox(height: 0),
                facebookTask == 'video'
                    ? const Column()
                    : const SizedBox(height: 0),
                facebookTask == 'report'
                    ? const Column()
                    : const SizedBox(height: 0),
                facebookTask == 'facebook'
                    ? const Column()
                    : const SizedBox(height: 0),
                facebookTask == 'community'
                    ? const Column()
                    : const SizedBox(height: 0),
                facebookTask == 'more'
                    ? const Column()
                    : const SizedBox(height: 0),
                const SizedBox(height: 30),
                const SizedBox(
                    width: 320,
                    child: Text('Country of Target',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold))),
                const SizedBox(height: 10),
                SizedBox(
                  width: 320,
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    value: "Nigeria",
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: const [
                      DropdownMenuItem(value: 'Nigeria', child: Text('Nigeria'))
                    ],
                    onChanged: (String? newValue) {
                      newValue = "Nigeria";
                    },
                  ),
                ),
                const SizedBox(height: 5),
                const SizedBox(
                    width: 300,
                    child: Text(
                        style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
                        softWrap: true,
                        "Select the country or countries you want to get the engagement from. ")),
                const SizedBox(height: 20),
                const SizedBox(
                    width: 320,
                    child: Text('State of Target',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold))),
                const SizedBox(height: 10),
                SizedBox(width: 320, child: stateField),
                const SizedBox(height: 5),
                const SizedBox(
                    width: 300,
                    child: Text(
                        style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
                        softWrap: true,
                        "Select the State you want to get the engagement from. Note that this affect and reduces the maximum number of nano-influencers that would perform this task if you select fewer states.")),
                const SizedBox(height: 30),
                const SizedBox(
                    width: 320,
                    child: Row(
                      children: [
                        Text('Total Quantity',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff092e57))),
                        SizedBox(width: 10),
                        Text(
                            softWrap: true,
                            "Total quantity based on the addition of all\nreaction(s) individual quantities.",
                            style: TextStyle(
                                fontSize: 8, color: Color(0xff008000)))
                      ],
                    )),
                const SizedBox(height: 10),
                SizedBox(width: 320, child: totalField),
                const SizedBox(height: 5),
                const SizedBox(
                    width: 300,
                    child: Text(
                        style: TextStyle(fontSize: 8, color: Color(0xff9e1d22)),
                        softWrap: true,
                        "min 50 - max 5,000 ")),
                const SizedBox(height: 30),
                const SizedBox(
                    width: 320,
                    child: Row(
                      children: [
                        Text('Cost',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff092e57))),
                        SizedBox(width: 10),
                        Text(
                            softWrap: true,
                            "Total cost based on the addition of all reaction(s)\nindividual costs.",
                            style: TextStyle(
                                fontSize: 8, color: Color(0xff008000)))
                      ],
                    )),
                const SizedBox(height: 10),
                SizedBox(width: 320, child: costField),
                const SizedBox(height: 5),
                const SizedBox(
                    width: 300,
                    child: Text(
                        style: TextStyle(fontSize: 8, color: Color(0xff9e1d22)),
                        softWrap: true,
                        "Min of N500")),
                const SizedBox(height: 30),
                const SizedBox(
                    width: 320,
                    child: Row(
                      children: [
                        Text('Link',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff092e57))),
                        SizedBox(width: 30),
                        Text(
                            softWrap: true,
                            "Drop the link here to the post here.",
                            style: TextStyle(
                                fontSize: 8, color: Color(0xff008000)))
                      ],
                    )),
                const SizedBox(height: 10),
                SizedBox(width: 320, child: linkField),
                const SizedBox(height: 5),
                const SizedBox(
                    width: 300,
                    child: Text(
                        style: TextStyle(fontSize: 8, color: Color(0xff9e1d22)),
                        softWrap: true,
                        "Ensure that you drop the correct link here. ")),
                const SizedBox(height: 30),
                const SizedBox(
                    width: 300,
                    child: Text(
                        softWrap: true,
                        'How Fast do you want the job to be delivered. I want the job delivered in:',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ))),
                const SizedBox(height: 5),
                const SizedBox(
                    width: 300,
                    child: Text(
                        style: TextStyle(fontSize: 8, color: Color(0xff9e1d22)),
                        softWrap: true,
                        "Only apply if your order is time bound with quantities above 500 aside that we deliver task less than 500 quantity within 36hrs. Just Select “Default Time” if your campaign is not time bound.")),
                const SizedBox(height: 10),
                SizedBox(
                  width: 340,
                  child: Row(children: [
                    const SizedBox(width: 10),
                    Radio(
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xffff6633)),
                        //focusColor: MaterialStateColor.resolveWith(
                        //    (states) => Colors.green),
                        onChanged: (String? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                        value: 'second',
                        groupValue: _character),
                    const SizedBox(width: 10),
                    const Text('60mins time', style: TextStyle(fontSize: 12)),
                    const SizedBox(width: 15),
                    const Text("(you're charged 3x the original fee)",
                        style:
                            TextStyle(fontSize: 9.5, color: Color(0xffff6633)))
                  ]),
                ),
                SizedBox(
                  width: 340,
                  child: Row(children: [
                    const SizedBox(width: 10),
                    Radio(
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xffff6633)),
                        //focusColor: MaterialStateColor.resolveWith(
                        //    (states) => Colors.green),
                        onChanged: (String? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                        value: 'third',
                        groupValue: _character),
                    const SizedBox(width: 10),
                    const Text('1-6hrs time', style: TextStyle(fontSize: 12)),
                    const SizedBox(width: 24),
                    const Text("(you're charged 2.5x the original fee)",
                        style:
                            TextStyle(fontSize: 9.5, color: Color(0xffff6633)))
                  ]),
                ),
                SizedBox(
                  width: 340,
                  child: Row(children: [
                    const SizedBox(width: 10),
                    Radio(
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xffff6633)),
                        //focusColor: MaterialStateColor.resolveWith(
                        //    (states) => Colors.green),
                        onChanged: (String? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                        value: 'fourth',
                        groupValue: _character),
                    const SizedBox(width: 10),
                    const Text('6-12hrs time', style: TextStyle(fontSize: 12)),
                    const SizedBox(width: 19),
                    const Text("(you're charged 2x the original fee)",
                        style:
                            TextStyle(fontSize: 9.5, color: Color(0xffff6633)))
                  ]),
                ),
                SizedBox(
                  width: 340,
                  child: Row(children: [
                    const SizedBox(width: 10),
                    Radio(
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xffff6633)),
                        //focusColor: MaterialStateColor.resolveWith(
                        //    (states) => Colors.green),
                        onChanged: (String? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                        value: 'fifth',
                        groupValue: _character),
                    const SizedBox(width: 10),
                    const Text('12-24hrs time', style: TextStyle(fontSize: 12)),
                    const SizedBox(width: 13),
                    const Text("(you're charged 1.5x the original fee)",
                        style:
                            TextStyle(fontSize: 9.5, color: Color(0xffff6633)))
                  ]),
                ),
                SizedBox(
                  width: 340,
                  child: Row(children: [
                    const SizedBox(width: 10),
                    Radio(
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xffff6633)),
                        //focusColor: MaterialStateColor.resolveWith(
                        //    (states) => Colors.green),
                        onChanged: (String? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                        value: 'sixth',
                        groupValue: _character),
                    const SizedBox(width: 10),
                    const Text('Default time',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold)),
                    const SizedBox(width: 19),
                    const Text("(No charges applied)",
                        style: TextStyle(
                            fontSize: 9.5,
                            color: Color(0xffff6633),
                            fontWeight: FontWeight.bold))
                  ]),
                ),
                SizedBox(
                  width: 340,
                  child: Row(children: [
                    const SizedBox(width: 10),
                    Radio(
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xffff6633)),
                        //focusColor: MaterialStateColor.resolveWith(
                        //    (states) => Colors.green),
                        onChanged: (String? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                        value: 'seventh',
                        groupValue: _character),
                    const SizedBox(width: 10),
                    const Text('1-3days time', style: TextStyle(fontSize: 12)),
                    const SizedBox(width: 18),
                    const Text("(you're charged 1.5x the original fee)",
                        style:
                            TextStyle(fontSize: 9.5, color: Color(0xffff6633)))
                  ]),
                ),
                SizedBox(
                  width: 340,
                  child: Row(children: [
                    const SizedBox(width: 10),
                    Radio(
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xffff6633)),
                        //focusColor: MaterialStateColor.resolveWith(
                        //    (states) => Colors.green),
                        onChanged: (String? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                        value: 'eight',
                        groupValue: _character),
                    const SizedBox(width: 10),
                    const Text('3-7days time', style: TextStyle(fontSize: 12)),
                    const SizedBox(width: 16),
                    const Text("(you're charged 1.5x the original fee)",
                        style:
                            TextStyle(fontSize: 9.5, color: Color(0xffff6633)))
                  ]),
                ),
                SizedBox(
                  width: 340,
                  child: Row(children: [
                    const SizedBox(width: 10),
                    Radio(
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xffff6633)),
                        //focusColor: MaterialStateColor.resolveWith(
                        //    (states) => Colors.green),
                        onChanged: (String? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                        value: 'ninth',
                        groupValue: _character),
                    const SizedBox(width: 10),
                    const Text('7-14days time', style: TextStyle(fontSize: 12)),
                    const SizedBox(width: 13),
                    const Text("(you're charged 1.5x the original fee)",
                        style:
                            TextStyle(fontSize: 9.5, color: Color(0xffff6633)))
                  ]),
                ),
                SizedBox(
                  width: 340,
                  child: Row(children: [
                    const SizedBox(width: 10),
                    Radio(
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xffff6633)),
                        //focusColor: MaterialStateColor.resolveWith(
                        //    (states) => Colors.green),
                        onChanged: (String? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                        value: 'tenth',
                        groupValue: _character),
                    const SizedBox(width: 10),
                    const Text('14-28days time',
                        style: TextStyle(fontSize: 12)),
                    const SizedBox(width: 8),
                    const Text("(you're charged 1.5x the original fee)",
                        style:
                            TextStyle(fontSize: 9.5, color: Color(0xffff6633)))
                  ]),
                ),
                const SizedBox(height: 30),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Start Date',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(30.0)),
                          child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Today', style: TextStyle(fontSize: 10)),
                                Icon(Icons.calendar_month)
                              ]),
                        )
                      ]),
                  const SizedBox(width: 100),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Start time',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(30.0)),
                          child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Now', style: TextStyle(fontSize: 10)),
                                Icon(Icons.schedule)
                              ]),
                        )
                      ]),
                ]),
                const SizedBox(height: 30),
                SizedBox(
                  width: 300,
                  child: RichText(
                    text: const TextSpan(
                        text:
                            "Total Cost (Cost  x Delivery Speed) N4,500 x 2 = ",
                        style: TextStyle(fontSize: 12),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'N9,000',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffff6633)),
                          ),
                        ]),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                    width: 300,
                    child: RichText(
                      textAlign: TextAlign.start,
                      text: const TextSpan(
                        text: '(Optional)',
                        style:
                            TextStyle(fontSize: 10, color: Color(0xff9e1d22)),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                'Share the link and image below on your\nwhatsapp status to get 1% cash back on your payment =',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff008000)),
                          ),
                          TextSpan(
                            text: 'N85 money back.',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffff6633)),
                          ),
                        ],
                      ),
                    )),
                const SizedBox(height: 5),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.black,
                                child: Icon(Icons.link, color: Colors.white)),
                            Text('click on the icon\nto copy link',
                                style: TextStyle(fontSize: 8))
                          ]),
                      SizedBox(width: 70),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.black,
                                child:
                                    Icon(Icons.download, color: Colors.white)),
                            Text('click on the icon to\ndownload image',
                                style: TextStyle(fontSize: 8))
                          ]),
                      SizedBox(width: 80)
                    ]),
                const SizedBox(height: 30),
                const SizedBox(
                    width: 300,
                    child: Text(
                        softWrap: true,
                        'Upload the Evidence (Screen Shot) of Image and link shared on your whatsapp status',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ))),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(15.0)),
                        child: const Icon(Icons.upload)),
                    const SizedBox(width: 180)
                  ],
                ),
                const SizedBox(height: 20),
                Row(children: [
                  const SizedBox(width: 20),
                  Radio(
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => const Color(0xff092E57)),
                      //focusColor: MaterialStateColor.resolveWith(
                      //    (states) => Colors.green),
                      onChanged: (String? value) {
                        setState(() {
                          _privacyPolicy = value;
                        });
                      },
                      value: 'second',
                      groupValue: _privacyPolicy),
                  const SizedBox(width: 10),
                  const Text(
                      'I have read and agreed to privacy policy for all task.',
                      style: TextStyle(fontSize: 10)),
                ]),
                Row(children: [
                  const SizedBox(width: 20),
                  Radio(
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => const Color(0xff092E57)),
                      //focusColor: MaterialStateColor.resolveWith(
                      //    (states) => Colors.green),
                      onChanged: (String? value) {
                        setState(() {
                          _privacyPolicy = value;
                        });
                      },
                      value: 'third',
                      groupValue: _privacyPolicy),
                  const SizedBox(width: 10),
                  const Text('I have read and agreed to terms and condition.',
                      style: TextStyle(fontSize: 10)),
                ]),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(180, 50),
                    backgroundColor: const Color(0xffff6633),
                  ),
                  child: const Text('Make Payment',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 30),
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
