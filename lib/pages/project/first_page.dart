import 'package:flutter/material.dart';
import 'package:final_project/models/project.dart';
import 'package:intl/intl.dart';

import '../peking/Peking_list_pages.dart';
import 'package:final_project/pages/shanghai/shanghai_list_pages.dart';
import 'package:final_project/pages/xiamen/xiamen_list_pages.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<Project> projects = [
    Project(
      title: 'University In Peking',
      name1: 'Tsinghun University',
      imgeURL1: 'assets/images/p1.jpg',
      name2: 'Peking University',
      imgeURL2: 'assets/images/p2.jpg',
      name3: 'Beijing Institude of Technology University',
      imgeURL3: 'assets/images/p3.jpg',

    ),
    Project(
      title: 'University In Shanghai',
      name1: 'Fudan University',
      imgeURL1: 'assets/images/s1.jpg',
      name2: 'Tongji University',
      imgeURL2: 'assets/images/s2.jpg',
      name3: 'Shanghai Jiao Tong University',
      imgeURL3: 'assets/images/s3.jpg',

    ),
    Project(
      title: 'University In Xiamen',
      name1: 'Xiamen University',
      imgeURL1: 'assets/images/x1.jpg',
      name2: 'Jimei University',
      imgeURL2: 'assets/images/x2.jpg',
      name3: 'Xiamen University of Technology',
      imgeURL3: 'assets/images/x3.jpg',

    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              child: Icon(Icons.school,),
            ),
            SizedBox(width: 10),
            Text('University In China'),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(40, 100, 40, 10),
                child: Text(
                  'University In China',
                  style: TextStyle(fontSize: 30.0),
                ),
              ),

            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(150, 20, 40, 5),
            child: Text(
              'choose location',
              style: TextStyle(fontSize: 20.0, color: Colors.black54),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(150, 20, 150, 20),
            child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    _handleCickProjectItemPeking(projects[0]);
                  });
                },
                child: Text('Peking')
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(150, 20, 150, 20),
            child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    _handleCickProjectItemShanghai(projects[1]);
                  });
                },
                child: Text('Shanghai')
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(150, 20, 150, 20),
            child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    _handleCickProjectItemXiamen(projects[2]);
                  });
                },
                child: Text('Xiamen')
            ),
          ),
        ],
      ),
    );
  }

  void _handleCickProjectItemPeking(Project index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PekingListPage(),
      ),
    );
  }

  void _handleCickProjectItemShanghai(Project index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ShanghaiListPages(),
      ),
    );
  }

  void _handleCickProjectItemXiamen(Project index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => XiamenListPages(),
      ),
    );
  }

}
