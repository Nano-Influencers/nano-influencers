import 'package:flutter/material.dart';
import 'package:anydrawer/anydrawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nano_influencers/screens/payment_screen.dart';
//import 'package:nano_influencers/widgets/auth_dialog.dart';
import 'package:youtube_player_iframe_plus/youtube_player_iframe_plus.dart';

class CustomOrder extends StatefulWidget {
  const CustomOrder({super.key});

  @override
  State<CustomOrder> createState() => _CustomOrderState();
}

class _CustomOrderState extends State<CustomOrder> {
  late YoutubePlayerController _controller;
  bool isDrawerOpen = false;
  bool isExpanded = false;
  bool isString = true;

  String? _character = 'Value';
  String? _privacyPolicy = 'Value';

  // Initial Selected Value
  int dropdownvalue = 0;
  //String dropdownStringValue = ' ';
  String task1val = '';
  String task2val = '';
  String task3val = '';
  String task4val = '';
  String task5val = '';
  String task6val = '';
  String task7val = '';
  String task8val = '';
  String task9val = '';
  String task10val = '';

  // List of items in our dropdown menu
  var items = [' ', 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var taskItems = ['', 'Like', 'Comment', 'Share'];

  TextEditingController numOfTasksController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController taskController = TextEditingController();
  TextEditingController linkToTaskController = TextEditingController();
  TextEditingController platformController = TextEditingController();
  TextEditingController instructionsController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController totalController = TextEditingController();

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
    Widget taskNo1 = Column(children: [
      const SizedBox(height: 20),
      const SizedBox(
          width: 300,
          child: Text('Task no.1',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 10),
      SizedBox(
        width: 300,
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          value: task1val,
          icon: const Icon(Icons.keyboard_arrow_down),
          items: taskItems.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              task1val = newValue!;
            });
          },
        ),
      ),
      const SizedBox(height: 40),
      const SizedBox(
          width: 300,
          child: Text('Link to Task no.1',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 10),
      SizedBox(
          width: 300,
          child: TextFormField(
              autofocus: false,
              controller: linkToTaskController,
              keyboardType: TextInputType.number,
              onSaved: (val) {
                linkToTaskController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Please provide the link to the task here.")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Platform',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      SizedBox(
          width: 300,
          child: TextFormField(
              autofocus: false,
              controller: platformController,
              keyboardType: TextInputType.number,
              onSaved: (val) {
                platformController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Please input the Platform you want the service to be carried out e.g. “Facebook”, “Call of Duty Mobile”, “YouTube” etc.")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Instructions for Task no.1',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      SizedBox(
          width: 300,
          height: 150,
          child: TextFormField(
              maxLines: 10,
              autofocus: false,
              controller: instructionsController,
              keyboardType: TextInputType.text,
              onSaved: (val) {
                instructionsController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Drop anything you like the nano-influencer to know about task 1")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Upload Image or Video for this task',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      Padding(
        padding: const EdgeInsets.only(right: 230),
        child: InkWell(
            onTap: () {},
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30.0)),
                width: 80,
                height: 80,
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.cloud_upload),
                      SizedBox(height: 3),
                      Text('Choose file', style: TextStyle(fontSize: 8)),
                      SizedBox(height: 3),
                      Text('Size limit: 25mb',
                          style: TextStyle(
                              fontWeight: FontWeight.w200, fontSize: 6)),
                    ]))),
      ),
      const SizedBox(height: 10),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Share any image or video that you want the nano-influencer to use for your task 1.")),
      const SizedBox(height: 40),
      const Divider(thickness: 1.0, color: Color(0xff092e57)),
    ]);

    Widget taskNo2 = Column(children: [
      const SizedBox(height: 20),
      const SizedBox(
          width: 300,
          child: Text('Task no.2',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 10),
      SizedBox(
        width: 300,
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          value: task2val,
          icon: const Icon(Icons.keyboard_arrow_down),
          items: taskItems.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              task2val = newValue!;
            });
          },
        ),
      ),
      const SizedBox(height: 40),
      const SizedBox(
          width: 300,
          child: Text('Link to Task no.2',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 10),
      SizedBox(
          width: 300,
          child: TextFormField(
              autofocus: false,
              controller: linkToTaskController,
              keyboardType: TextInputType.number,
              onSaved: (val) {
                linkToTaskController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Please provide the link to the task here.")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Platform',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      SizedBox(
          width: 300,
          child: TextFormField(
              autofocus: false,
              controller: platformController,
              keyboardType: TextInputType.number,
              onSaved: (val) {
                platformController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Please input the Platform you want the service to be carried out e.g. “Facebook”, “Call of Duty Mobile”, “YouTube” etc.")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Instructions for Task no.2',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      SizedBox(
          width: 300,
          height: 150,
          child: TextFormField(
              maxLines: 10,
              autofocus: false,
              controller: instructionsController,
              keyboardType: TextInputType.text,
              onSaved: (val) {
                instructionsController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Drop anything you like the nano-influencer to know about task 2")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Upload Image or Video for this task',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      Padding(
        padding: const EdgeInsets.only(right: 230),
        child: InkWell(
            onTap: () {},
            child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30.0)),
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.cloud_upload),
                      SizedBox(height: 3),
                      Text('Choose file', style: TextStyle(fontSize: 8)),
                      SizedBox(height: 3),
                      Text('Size limit: 25mb',
                          style: TextStyle(
                              fontWeight: FontWeight.w200, fontSize: 6)),
                    ]))),
      ),
      const SizedBox(height: 10),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Share any image or video that you want the nano-influencer to use for your task 2.")),
      const SizedBox(height: 40),
      const Divider(thickness: 1.0, color: Color(0xff092e57)),
    ]);

    Widget taskNo3 = Column(children: [
      const SizedBox(height: 20),
      const SizedBox(
          width: 300,
          child: Text('Task no.3',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 10),
      SizedBox(
        width: 300,
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          value: task3val,
          icon: const Icon(Icons.keyboard_arrow_down),
          items: taskItems.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              task3val = newValue!;
            });
          },
        ),
      ),
      const SizedBox(height: 40),
      const SizedBox(
          width: 300,
          child: Text('Link to Task no.3',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 10),
      SizedBox(
          width: 300,
          child: TextFormField(
              autofocus: false,
              controller: linkToTaskController,
              keyboardType: TextInputType.number,
              onSaved: (val) {
                linkToTaskController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Please provide the link to the task here.")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Platform',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      SizedBox(
          width: 300,
          child: TextFormField(
              autofocus: false,
              controller: platformController,
              keyboardType: TextInputType.number,
              onSaved: (val) {
                platformController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Please input the Platform you want the service to be carried out e.g. “Facebook”, “Call of Duty Mobile”, “YouTube” etc.")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Instructions for Task no.3',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      SizedBox(
          width: 300,
          height: 150,
          child: TextFormField(
              maxLines: 10,
              autofocus: false,
              controller: instructionsController,
              keyboardType: TextInputType.text,
              onSaved: (val) {
                instructionsController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Drop anything you like the nano-influencer to know about task 3")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Upload Image or Video for this task',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      Padding(
        padding: const EdgeInsets.only(right: 230),
        child: InkWell(
            onTap: () {},
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30.0)),
                height: 80,
                width: 80,
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.cloud_upload),
                      SizedBox(height: 3),
                      Text('Choose file', style: TextStyle(fontSize: 8)),
                      SizedBox(height: 3),
                      Text('Size limit: 25mb',
                          style: TextStyle(
                              fontWeight: FontWeight.w200, fontSize: 6)),
                    ]))),
      ),
      const SizedBox(height: 10),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Share any image or video that you want the nano-influencer to use for your task 3.")),
      const SizedBox(height: 40),
      const Divider(thickness: 1.0, color: Color(0xff092e57)),
    ]);

    Widget taskNo4 = Column(children: [
      const SizedBox(height: 20),
      const SizedBox(
          width: 300,
          child: Text('Task no.4',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 10),
      SizedBox(
        width: 300,
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          value: task4val,
          icon: const Icon(Icons.keyboard_arrow_down),
          items: taskItems.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              task4val = newValue!;
            });
          },
        ),
      ),
      const SizedBox(height: 40),
      const SizedBox(
          width: 300,
          child: Text('Link to Task no.4',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 10),
      SizedBox(
          width: 300,
          child: TextFormField(
              autofocus: false,
              controller: linkToTaskController,
              keyboardType: TextInputType.number,
              onSaved: (val) {
                linkToTaskController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Please provide the link to the task here.")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Platform',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      SizedBox(
          width: 300,
          child: TextFormField(
              autofocus: false,
              controller: platformController,
              keyboardType: TextInputType.number,
              onSaved: (val) {
                platformController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Please input the Platform you want the service to be carried out e.g. “Facebook”, “Call of Duty Mobile”, “YouTube” etc.")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Instructions for Task no.4',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      SizedBox(
          width: 300,
          height: 150,
          child: TextFormField(
              maxLines: 10,
              autofocus: false,
              controller: instructionsController,
              keyboardType: TextInputType.text,
              onSaved: (val) {
                instructionsController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Drop anything you like the nano-influencer to know about task 4")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Upload Image or Video for this task',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      Padding(
        padding: const EdgeInsets.only(right: 230),
        child: InkWell(
            onTap: () {},
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30.0)),
                height: 80,
                width: 80,
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.cloud_upload),
                      SizedBox(height: 3),
                      Text('Choose file', style: TextStyle(fontSize: 8)),
                      SizedBox(height: 3),
                      Text('Size limit: 25mb',
                          style: TextStyle(
                              fontWeight: FontWeight.w200, fontSize: 6)),
                    ]))),
      ),
      const SizedBox(height: 10),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Share any image or video that you want the nano-influencer to use for your task 4.")),
      const SizedBox(height: 40),
      const Divider(thickness: 1.0, color: Color(0xff092e57)),
    ]);

    Widget taskNo5 = Column(children: [
      const SizedBox(height: 20),
      const SizedBox(
          width: 300,
          child: Text('Task no.5',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 10),
      SizedBox(
        width: 300,
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          value: task5val,
          icon: const Icon(Icons.keyboard_arrow_down),
          items: taskItems.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              task5val = newValue!;
            });
          },
        ),
      ),
      const SizedBox(height: 40),
      const SizedBox(
          width: 300,
          child: Text('Link to Task no.5',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 10),
      SizedBox(
          width: 300,
          child: TextFormField(
              autofocus: false,
              controller: linkToTaskController,
              keyboardType: TextInputType.number,
              onSaved: (val) {
                linkToTaskController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Please provide the link to the task here.")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Platform',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      SizedBox(
          width: 300,
          child: TextFormField(
              autofocus: false,
              controller: platformController,
              keyboardType: TextInputType.number,
              onSaved: (val) {
                platformController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Please input the Platform you want the service to be carried out e.g. “Facebook”, “Call of Duty Mobile”, “YouTube” etc.")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Instructions for Task no.5',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      SizedBox(
          width: 300,
          height: 150,
          child: TextFormField(
              maxLines: 10,
              autofocus: false,
              controller: instructionsController,
              keyboardType: TextInputType.text,
              onSaved: (val) {
                instructionsController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Drop anything you like the nano-influencer to know about task 5")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Upload Image or Video for this task',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      Padding(
        padding: const EdgeInsets.only(right: 230),
        child: InkWell(
            onTap: () {},
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30.0)),
                height: 80,
                width: 80,
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.cloud_upload),
                      SizedBox(height: 3),
                      Text('Choose file', style: TextStyle(fontSize: 8)),
                      SizedBox(height: 3),
                      Text('Size limit: 25mb',
                          style: TextStyle(
                              fontWeight: FontWeight.w200, fontSize: 6)),
                    ]))),
      ),
      const SizedBox(height: 10),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Share any image or video that you want the nano-influencer to use for your task 5.")),
      const SizedBox(height: 40),
      const Divider(thickness: 1.0, color: Color(0xff092e57)),
    ]);

    Widget taskNo6 = Column(children: [
      const SizedBox(height: 20),
      const SizedBox(
          width: 300,
          child: Text('Task no.6',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 10),
      SizedBox(
        width: 300,
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          value: task6val,
          icon: const Icon(Icons.keyboard_arrow_down),
          items: taskItems.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              task6val = newValue!;
            });
          },
        ),
      ),
      const SizedBox(height: 40),
      const SizedBox(
          width: 300,
          child: Text('Link to Task no.6',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 10),
      SizedBox(
          width: 300,
          child: TextFormField(
              autofocus: false,
              controller: linkToTaskController,
              keyboardType: TextInputType.number,
              onSaved: (val) {
                linkToTaskController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Please provide the link to the task here.")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Platform',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      SizedBox(
          width: 300,
          child: TextFormField(
              autofocus: false,
              controller: platformController,
              keyboardType: TextInputType.number,
              onSaved: (val) {
                platformController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Please input the Platform you want the service to be carried out e.g. “Facebook”, “Call of Duty Mobile”, “YouTube” etc.")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Instructions for Task no.6',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      SizedBox(
          width: 300,
          height: 150,
          child: TextFormField(
              maxLines: 10,
              autofocus: false,
              controller: instructionsController,
              keyboardType: TextInputType.text,
              onSaved: (val) {
                instructionsController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Drop anything you like the nano-influencer to know about task 6")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Upload Image or Video for this task',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      Padding(
        padding: const EdgeInsets.only(right: 230),
        child: InkWell(
            onTap: () {},
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30.0)),
                height: 80,
                width: 80,
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.cloud_upload),
                      SizedBox(height: 3),
                      Text('Choose file', style: TextStyle(fontSize: 8)),
                      SizedBox(height: 3),
                      Text('Size limit: 25mb',
                          style: TextStyle(
                              fontWeight: FontWeight.w200, fontSize: 6)),
                    ]))),
      ),
      const SizedBox(height: 10),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Share any image or video that you want the nano-influencer to use for your task 6.")),
      const SizedBox(height: 40),
      const Divider(thickness: 1.0, color: Color(0xff092e57)),
    ]);

    Widget taskNo7 = Column(children: [
      const SizedBox(height: 20),
      const SizedBox(
          width: 300,
          child: Text('Task no.7',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 10),
      SizedBox(
        width: 300,
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          value: task7val,
          icon: const Icon(Icons.keyboard_arrow_down),
          items: taskItems.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              task7val = newValue!;
            });
          },
        ),
      ),
      const SizedBox(height: 40),
      const SizedBox(
          width: 300,
          child: Text('Link to Task no.7',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 10),
      SizedBox(
          width: 300,
          child: TextFormField(
              autofocus: false,
              controller: linkToTaskController,
              keyboardType: TextInputType.number,
              onSaved: (val) {
                linkToTaskController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Please provide the link to the task here.")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Platform',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      SizedBox(
          width: 300,
          child: TextFormField(
              autofocus: false,
              controller: platformController,
              keyboardType: TextInputType.number,
              onSaved: (val) {
                platformController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Please input the Platform you want the service to be carried out e.g. “Facebook”, “Call of Duty Mobile”, “YouTube” etc.")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Instructions for Task no.7',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      SizedBox(
          width: 300,
          height: 150,
          child: TextFormField(
              maxLines: 10,
              autofocus: false,
              controller: instructionsController,
              keyboardType: TextInputType.text,
              onSaved: (val) {
                instructionsController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Drop anything you like the nano-influencer to know about task 7")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Upload Image or Video for this task',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      Padding(
        padding: const EdgeInsets.only(right: 230),
        child: InkWell(
            onTap: () {},
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30.0)),
                height: 80,
                width: 80,
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.cloud_upload),
                      SizedBox(height: 3),
                      Text('Choose file', style: TextStyle(fontSize: 8)),
                      SizedBox(height: 3),
                      Text('Size limit: 25mb',
                          style: TextStyle(
                              fontWeight: FontWeight.w200, fontSize: 6)),
                    ]))),
      ),
      const SizedBox(height: 10),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Share any image or video that you want the nano-influencer to use for your task 7.")),
      const SizedBox(height: 40),
      const Divider(thickness: 1.0, color: Color(0xff092e57)),
    ]);

    Widget taskNo8 = Column(children: [
      const SizedBox(height: 20),
      const SizedBox(
          width: 300,
          child: Text('Task no.8',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 10),
      SizedBox(
        width: 300,
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          value: task8val,
          icon: const Icon(Icons.keyboard_arrow_down),
          items: taskItems.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              task8val = newValue!;
            });
          },
        ),
      ),
      const SizedBox(height: 40),
      const SizedBox(
          width: 300,
          child: Text('Link to Task no.8',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 10),
      SizedBox(
          width: 300,
          child: TextFormField(
              autofocus: false,
              controller: linkToTaskController,
              keyboardType: TextInputType.number,
              onSaved: (val) {
                linkToTaskController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Please provide the link to the task here.")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Platform',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      SizedBox(
          width: 300,
          child: TextFormField(
              autofocus: false,
              controller: platformController,
              keyboardType: TextInputType.number,
              onSaved: (val) {
                platformController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Please input the Platform you want the service to be carried out e.g. “Facebook”, “Call of Duty Mobile”, “YouTube” etc.")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Instructions for Task no.8',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      SizedBox(
          width: 300,
          height: 150,
          child: TextFormField(
              maxLines: 10,
              autofocus: false,
              controller: instructionsController,
              keyboardType: TextInputType.text,
              onSaved: (val) {
                instructionsController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Drop anything you like the nano-influencer to know about task 8")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Upload Image or Video for this task',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      Padding(
        padding: const EdgeInsets.only(right: 230),
        child: InkWell(
            onTap: () {},
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30.0)),
                height: 80,
                width: 80,
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.cloud_upload),
                      SizedBox(height: 3),
                      Text('Choose file', style: TextStyle(fontSize: 8)),
                      SizedBox(height: 3),
                      Text('Size limit: 25mb',
                          style: TextStyle(
                              fontWeight: FontWeight.w200, fontSize: 6)),
                    ]))),
      ),
      const SizedBox(height: 10),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Share any image or video that you want the nano-influencer to use for your task 8.")),
      const SizedBox(height: 40),
      const Divider(thickness: 1.0, color: Color(0xff092e57)),
    ]);

    Widget taskNo9 = Column(children: [
      const SizedBox(height: 20),
      const SizedBox(
          width: 300,
          child: Text('Task no.9',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 10),
      SizedBox(
        width: 300,
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          value: task9val,
          icon: const Icon(Icons.keyboard_arrow_down),
          items: taskItems.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              task9val = newValue!;
            });
          },
        ),
      ),
      const SizedBox(height: 40),
      const SizedBox(
          width: 300,
          child: Text('Link to Task no.9',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 10),
      SizedBox(
          width: 300,
          child: TextFormField(
              autofocus: false,
              controller: linkToTaskController,
              keyboardType: TextInputType.number,
              onSaved: (val) {
                linkToTaskController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Please provide the link to the task here.")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Platform',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      SizedBox(
          width: 300,
          child: TextFormField(
              autofocus: false,
              controller: platformController,
              keyboardType: TextInputType.number,
              onSaved: (val) {
                platformController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Please input the Platform you want the service to be carried out e.g. “Facebook”, “Call of Duty Mobile”, “YouTube” etc.")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Instructions for Task no.9',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      SizedBox(
          width: 300,
          height: 150,
          child: TextFormField(
              maxLines: 10,
              autofocus: false,
              controller: instructionsController,
              keyboardType: TextInputType.text,
              onSaved: (val) {
                instructionsController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Drop anything you like the nano-influencer to know about task 9")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Upload Image or Video for this task',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      Padding(
        padding: const EdgeInsets.only(right: 230),
        child: InkWell(
            onTap: () {},
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30.0)),
                height: 80,
                width: 80,
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.cloud_upload),
                      SizedBox(height: 3),
                      Text('Choose file', style: TextStyle(fontSize: 8)),
                      SizedBox(height: 3),
                      Text('Size limit: 25mb',
                          style: TextStyle(
                              fontWeight: FontWeight.w200, fontSize: 6)),
                    ]))),
      ),
      const SizedBox(height: 10),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Share any image or video that you want the nano-influencer to use for your task 9.")),
      const SizedBox(height: 40),
      const Divider(thickness: 1.0, color: Color(0xff092e57)),
    ]);

    Widget taskNo10 = Column(children: [
      const SizedBox(height: 20),
      const SizedBox(
          width: 300,
          child: Text('Task no.10',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 10),
      SizedBox(
        width: 300,
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          value: task10val,
          icon: const Icon(Icons.keyboard_arrow_down),
          items: taskItems.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              task10val = newValue!;
            });
          },
        ),
      ),
      const SizedBox(height: 40),
      const SizedBox(
          width: 300,
          child: Text('Link to Task no.10',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 10),
      SizedBox(
          width: 300,
          child: TextFormField(
              autofocus: false,
              controller: linkToTaskController,
              keyboardType: TextInputType.number,
              onSaved: (val) {
                linkToTaskController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Please provide the link to the task here.")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Platform',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      SizedBox(
          width: 300,
          child: TextFormField(
              autofocus: false,
              controller: platformController,
              keyboardType: TextInputType.number,
              onSaved: (val) {
                platformController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Please input the Platform you want the service to be carried out e.g. “Facebook”, “Call of Duty Mobile”, “YouTube” etc.")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Instructions for Task no.10',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      SizedBox(
          width: 300,
          height: 150,
          child: TextFormField(
              maxLines: 10,
              autofocus: false,
              controller: instructionsController,
              keyboardType: TextInputType.text,
              onSaved: (val) {
                instructionsController.text = val!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))))),
      const SizedBox(height: 5),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Drop anything you like the nano-influencer to know about task 10")),
      const SizedBox(height: 30),
      const SizedBox(
          width: 300,
          child: Text('Upload Image or Video for this task',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))),
      const SizedBox(height: 5),
      Padding(
        padding: const EdgeInsets.only(right: 230),
        child: InkWell(
            onTap: () {},
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30.0)),
                height: 80,
                width: 80,
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.cloud_upload),
                      SizedBox(height: 3),
                      Text('Choose file', style: TextStyle(fontSize: 8)),
                      SizedBox(height: 3),
                      Text('Size limit: 25mb',
                          style: TextStyle(
                              fontWeight: FontWeight.w200, fontSize: 6)),
                    ]))),
      ),
      const SizedBox(height: 10),
      const SizedBox(
          width: 280,
          child: Text(
              style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
              softWrap: true,
              "Share any image or video that you want the nano-influencer to use for your task 10.")),
      const SizedBox(height: 40),
      const Divider(thickness: 1.0, color: Color(0xff092e57)),
    ]);

    //number of tasks field
    final numOfTasksField = DropdownButtonFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      value: isString ? ' ' : dropdownvalue,
      icon: const Icon(Icons.keyboard_arrow_down),
      items: items.map((var items) {
        return DropdownMenuItem(
          value: items,
          child: Text('$items'),
        );
      }).toList(),
      onChanged: (var newValue) {
        if (newValue == ' ') {
          isString = true;
        } else {
          setState(() {
            isString = false;
            dropdownvalue = int.parse(newValue.toString());
          });
        }
      },
    );

    //quantity of tasks field
    final quantityField = TextFormField(
        autofocus: false,
        controller: quantityController,
        keyboardType: TextInputType.number,
        validator: (val) => val!.isEmpty ? 'Fill out this field' : null,
        onSaved: (val) {
          quantityController.text = val!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))));
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

//t0tal quantity of tasks field
    final totalField = TextFormField(
        autofocus: false,
        controller: totalController,
        keyboardType: TextInputType.number,
        validator: (val) => val!.isEmpty ? 'Fill out this field' : null,
        onSaved: (val) {
          totalController.text = val!;
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const SizedBox(
                width: 300,
                child: Text(
                  style: TextStyle(fontSize: 9.9, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  softWrap: true,
                  'watch the video below to understand how to create\ncustom orders',
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
              const SizedBox(height: 50),
              const SizedBox(
                  width: 300,
                  child: Text('No of Tasks',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ))),
              const SizedBox(height: 10),
              SizedBox(width: 300, child: numOfTasksField),
              const SizedBox(height: 5),
              const SizedBox(
                  width: 280,
                  child: Text(
                      style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
                      softWrap: true,
                      "This describes how many tasks you would like per user to perfrom at a time. Just select whole numbers. E.g. Like, Comment and Share consists 3 tasks. If that is the case, then input 3. The tasks should come in the order your want it to be performed. E.g. if you wish for them to like before commenting, then it is important to note that the first Task should be like, then comment before sharing.")),
              const SizedBox(height: 30),
              const SizedBox(
                  width: 300,
                  child: Text('Quantity',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ))),
              const SizedBox(height: 10),
              SizedBox(width: 300, child: quantityField),
              const SizedBox(height: 5),
              const SizedBox(
                  width: 280,
                  child: Text(
                      style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
                      softWrap: true,
                      "How many nano influencers do you want to perform the task(s)")),
              const SizedBox(height: 30),
              const Divider(thickness: 1.0, color: Color(0xff092e57)),
              const SizedBox(height: 40),
              dropdownvalue >= 1 ? taskNo1 : const SizedBox(height: 0),
              dropdownvalue >= 2 ? taskNo2 : const SizedBox(height: 0),
              dropdownvalue >= 3 ? taskNo3 : const SizedBox(height: 0),
              dropdownvalue >= 4 ? taskNo4 : const SizedBox(height: 0),
              dropdownvalue >= 5 ? taskNo5 : const SizedBox(height: 0),
              dropdownvalue >= 6 ? taskNo6 : const SizedBox(height: 0),
              dropdownvalue >= 7 ? taskNo7 : const SizedBox(height: 0),
              dropdownvalue >= 8 ? taskNo8 : const SizedBox(height: 0),
              dropdownvalue >= 9 ? taskNo9 : const SizedBox(height: 0),
              dropdownvalue >= 10 ? taskNo10 : const SizedBox(height: 0),
              const SizedBox(
                  width: 300,
                  child: Text('Country of Target',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ))),
              const SizedBox(height: 10),
              SizedBox(
                width: 300,
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
                  width: 280,
                  child: Text(
                      style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
                      softWrap: true,
                      "Select the country from where you want the task to be carried out. this impacts on the max number of persons the task would be allocated to, and the selection would only reach mostly people from this selected country.")),
              const SizedBox(height: 30),
              const SizedBox(
                  width: 300,
                  child: Text('State of Target',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ))),
              const SizedBox(height: 10),
              SizedBox(width: 300, child: stateField),
              const SizedBox(height: 5),
              const SizedBox(
                  width: 280,
                  child: Text(
                      style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
                      softWrap: true,
                      "Select the state from where you want the task to be carried out. this impacts on the max number of persons the task would be allocated to, and the selection would only reach mostly people from the selected state(s).  Select “All” if you want to target all states in Nigeria.")),
              const SizedBox(height: 30),
              const SizedBox(
                  width: 300,
                  child: Text('Total Quantity',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ))),
              const SizedBox(height: 10),
              SizedBox(width: 300, child: totalField),
              const SizedBox(height: 5),
              const SizedBox(
                  width: 280,
                  child: Text(
                      style: TextStyle(fontSize: 8, color: Color(0xffff6633)),
                      softWrap: true,
                      "Total number of task x quantity = Total Quantity")),
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
                      "Only apply if your order is time bound with quantities above 250. Just Select “Default Time” if your campaign is not time bound. default means that your task would be performed at the pace of the nano-influencers.")),
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
                      style: TextStyle(fontSize: 9.5, color: Color(0xffff6633)))
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
                      style: TextStyle(fontSize: 9.5, color: Color(0xffff6633)))
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
                      style: TextStyle(fontSize: 9.5, color: Color(0xffff6633)))
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
                      style: TextStyle(fontSize: 9.5, color: Color(0xffff6633)))
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
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
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
                      style: TextStyle(fontSize: 9.5, color: Color(0xffff6633)))
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
                      style: TextStyle(fontSize: 9.5, color: Color(0xffff6633)))
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
                      style: TextStyle(fontSize: 9.5, color: Color(0xffff6633)))
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
                  const Text('14-28days time', style: TextStyle(fontSize: 12)),
                  const SizedBox(width: 8),
                  const Text("(you're charged 1.5x the original fee)",
                      style: TextStyle(fontSize: 9.5, color: Color(0xffff6633)))
                ]),
              ),
              const SizedBox(height: 30),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                    textAlign: TextAlign.start,
                    text: const TextSpan(
                      text: '(Optional)',
                      style: TextStyle(fontSize: 10, color: Color(0xff9e1d22)),
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
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.black,
                      child: Icon(Icons.link, color: Colors.white)),
                  Text('click on the icon\nto copy link',
                      style: TextStyle(fontSize: 8))
                ]),
                SizedBox(width: 70),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.black,
                      child: Icon(Icons.download, color: Colors.white)),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PaymentScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(180, 50),
                  backgroundColor: const Color(0xffff6633),
                ),
                child: const Text('Proceed',
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
                          SizedBox(height: 10)
                        ])
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
