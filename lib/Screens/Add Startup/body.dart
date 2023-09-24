import 'package:flutter/material.dart';
import 'package:mentorup_app/Screens/Mentor\'s Desk/project_details.dart';
import 'package:folding_cell/folding_cell.dart';

class AddStartup extends StatelessWidget {
  AddStartup({Key? key, this.project}) : super(key: key);
  final ProjectDetails? project;

  List<ProjectDetails> list = [
    ProjectDetails(
      name: "Brainy Ninjas",
      topic: "Android Patient Tracker",
      description:
          "Ths application allows doctor to insert various data fields regarding a patient including patient name, disease, medication provided, date of arrival, cost etc. The system is aimed to help doctors to enter as well as view patient history as well as other patient details.",
    ),
    ProjectDetails(
      name: "Tech Mayhem",
      topic: "Image Encryption",
      description:
          "Since there is a need for image encryption techniques in order to hide images from such attacks. In this system we use Triple DES (Data Encryption Standard) in order to hide image. Such Encryption technique helps to avoid intrusion attacks.",
    ),
    ProjectDetails(
      name: "Business Preachers",
      topic: "Professional organizer",
      description:
          "Professional organizers help people declutter and minimize for a living. In an age of materialism, many people are desperate to downsize and take control over their possessions, rather than letting their things possess them.",
    ),
    ProjectDetails(
      name: "Techie Tribe",
      topic: "Android Task Monitoring",
      description:
          "The system would be designed to alert the user of all the important tasks that are due on a specific day. The project will have a tasks reminder app, with AI-powered Chatbot. It helps you to see that tasks you set actually get done, with the help of AI assistant.",
    ),
    ProjectDetails(
      name: "The Visioners",
      topic: "College Enquiry Chatbot",
      description:
          "The College bot project is built using artificial algorithms that analyses user’s queries & know user’s message.The system replies using an effective Graphical user interface which implies that as if a real person is talking to the user.",
    ),
    ProjectDetails(
      name: "Mind Crusaders",
      topic: "Detecting Data Leaks",
      description:
          "This project allows for data allocation tactics that improves the chances of identifying data leakages. These methods do not depend on various alterations of the transferred data like parity. We also insert “realistic but fake” data records into the data stream.",
    ),
    ProjectDetails(
      name: "Dream Builders",
      topic: "Online Reseller",
      description:
          "A system with reseller sources products from suppliers and then sells it to the end consumers. Unlike a homegrown brand or label that sells its own products, resellers focus on selling ready-made products to its customers through online transactions.",
    ),
  ];

  Widget _buildFrontWidget(context, ProjectDetails project) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 18,
          ),
          decoration: BoxDecoration(
            color: Color(0xFFF1E6FF).withOpacity(1),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    project.name,
                    style: TextStyle(
                      fontFamily: 'RocknRollOne',
                      fontWeight: FontWeight.w600,
                      fontSize: 21,
                      height: 1.0,
                      color: Color(0xFF512DA8),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(
                      Icons.expand_more_outlined,
                      color: Color(0xFF512DA8),
                      size: 30,
                    ),
                    onPressed: () {
                      final foldingCellState = context
                          .findAncestorStateOfType<SimpleFoldingCellState>();
                      foldingCellState?.toggleFold();
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                    height: 5,
                  ),
                  Text(
                    project.topic,
                    style: TextStyle(
                      fontFamily: 'RocknRollOne',
                      fontWeight: FontWeight.w100,
                      fontSize: 11,
                      height: 1.0,
                      color: Color(0xFF512DA8),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildInnerWidget(context, ProjectDetails project) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            color: Color(0xFFF1E6FF).withOpacity(1),
          ),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                child: Text(
                  project.description,
                  style: TextStyle(
                    fontFamily: 'RocknRollOne',
                    fontWeight: FontWeight.w200,
                    fontSize: 12,
                    height: 1.0,
                    color: Color(0xFF512DA8),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFF512DA8),
                      elevation: 8,
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    icon: Icon(
                      Icons.add,
                      color: Color(0xFFF1E6FF),
                    ),
                    label: Text(
                      'Add',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFFF1E6FF),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFF512DA8),
                      elevation: 8,
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    icon: Icon(
                      Icons.delete_outline_rounded,
                      color: Color(0xFFF1E6FF),
                    ),
                    label: Text(
                      'Delete',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFFF1E6FF),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              IconButton(
                //Icons.touch_app_outlined,
                icon: Icon(
                  Icons.expand_less_outlined,
                  color: Color(0xFF512DA8),
                  size: 30,
                ),
                onPressed: () {
                  final foldingCellState =
                      context.findAncestorStateOfType<SimpleFoldingCellState>();
                  foldingCellState?.toggleFold();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(
                Icons.keyboard_arrow_left,
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              color: Color(0xFF512DA8),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  //FoldingCell Card
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 16,
                      ),
                      child: SimpleFoldingCell.create(
                        //key: _foldingCellKey,
                        frontWidget: _buildFrontWidget(context, list[0]),
                        innerWidget: _buildInnerWidget(context, list[0]),
                        cellSize: Size(MediaQuery.of(context).size.width, 91),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 5,
                        ),
                        animationDuration: Duration(milliseconds: 300),
                        borderRadius: 20,
                        onOpen: () => print('cell opened'),
                        onClose: () => print('cell closed'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 16,
                      ),
                      child: SimpleFoldingCell.create(
                        //key: _foldingCellKey,
                        frontWidget: _buildFrontWidget(context, list[1]),
                        innerWidget: _buildInnerWidget(context, list[1]),
                        cellSize: Size(MediaQuery.of(context).size.width, 91),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 5,
                        ),
                        animationDuration: Duration(milliseconds: 300),
                        borderRadius: 20,
                        onOpen: () => print('cell opened'),
                        onClose: () => print('cell closed'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 16,
                      ),
                      child: SimpleFoldingCell.create(
                        //key: _foldingCellKey,
                        frontWidget: _buildFrontWidget(context, list[2]),
                        innerWidget: _buildInnerWidget(context, list[2]),
                        cellSize: Size(MediaQuery.of(context).size.width, 91),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 5,
                        ),
                        animationDuration: Duration(milliseconds: 300),
                        borderRadius: 20,
                        onOpen: () => print('cell opened'),
                        onClose: () => print('cell closed'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 16,
                      ),
                      child: SimpleFoldingCell.create(
                        //key: _foldingCellKey,
                        frontWidget: _buildFrontWidget(context, list[3]),
                        innerWidget: _buildInnerWidget(context, list[3]),
                        cellSize: Size(MediaQuery.of(context).size.width, 91),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 5,
                        ),
                        animationDuration: Duration(milliseconds: 300),
                        borderRadius: 20,
                        onOpen: () => print('cell opened'),
                        onClose: () => print('cell closed'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 16,
                      ),
                      child: SimpleFoldingCell.create(
                        //key: _foldingCellKey,
                        frontWidget: _buildFrontWidget(context, list[4]),
                        innerWidget: _buildInnerWidget(context, list[4]),
                        cellSize: Size(MediaQuery.of(context).size.width, 91),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 5,
                        ),
                        animationDuration: Duration(milliseconds: 300),
                        borderRadius: 20,
                        onOpen: () => print('cell opened'),
                        onClose: () => print('cell closed'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 16,
                      ),
                      child: SimpleFoldingCell.create(
                        //key: _foldingCellKey,
                        frontWidget: _buildFrontWidget(context, list[5]),
                        innerWidget: _buildInnerWidget(context, list[5]),
                        cellSize: Size(MediaQuery.of(context).size.width, 91),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 5,
                        ),
                        animationDuration: Duration(milliseconds: 300),
                        borderRadius: 20,
                        onOpen: () => print('cell opened'),
                        onClose: () => print('cell closed'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 16,
                      ),
                      child: SimpleFoldingCell.create(
                        //key: _foldingCellKey,
                        frontWidget: _buildFrontWidget(context, list[6]),
                        innerWidget: _buildInnerWidget(context, list[6]),
                        cellSize: Size(MediaQuery.of(context).size.width, 91),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 5,
                        ),
                        animationDuration: Duration(milliseconds: 300),
                        borderRadius: 20,
                        onOpen: () => print('cell opened'),
                        onClose: () => print('cell closed'),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
