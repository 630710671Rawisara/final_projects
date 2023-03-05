import 'package:flutter/material.dart';
import 'package:final_project/models/project_detail.dart';

class XiamenListPages extends StatefulWidget {
  const XiamenListPages({Key? key}) : super(key: key);

  @override
  State<XiamenListPages> createState() => _XiamenListPagesState();
}

class _XiamenListPagesState extends State<XiamenListPages> {
  List<ProjectDetail> projects = [
    ProjectDetail(
      name: 'Xiamen University',
      description: 'Xiamen University (XMU), established in 1921 by renowned patriotic overseas Chinese leader Mr. Tan Kah Kee, is the first university founded by an overseas Chinese in the history of modern Chinese education. XMU has long been listed among China’s leading universities on the national 211 Project, 985 Project and Double First-Class Initiative, which have been launched by the Chinese government to support selected universities in achieving world-class standing.',
      location: 'No. 422, Siming South Road, Xiamen, Fujian, China. 361005',
      imageURL: 'assets/images/x1.jpg',
      website: 'https://en.xmu.edu.cn/main.htm',
      phone: '+86-592-2180000',
      email: 'ws@xmu.edu.cn',
    ),
    ProjectDetail(
      name: 'Jimei University',
      description: 'Jimei University has twenty one colleges offering sixty-eight undergraduate courses in nine disciplines: Economics, Law, Pedagogy, Arts, Science, Engineering, Agronomy, Administration, and Fine Arts. There is also one postdoctoral offered in Fisheries, two doctorate programs in Fisheries, Naval Architecture and Ocean Engineering. There are 8 first class provincial disciplines (including 2 characteristic key disciplines).',
      location: '185 Yinjiang Rd., Jimei District, Xiamen,361021',
      imageURL: 'assets/images/x2.jpg',
      website: 'https://english.jmu.edu.cn/',
      phone: '+86-592-6188090',
      email: 'iced@jmu.edu.cn',
    ),
    ProjectDetail(
      name: 'Xiamen University of Technology',
      description: 'XMUT is faithful to our commitment to serving the needs of the industry and community in the region and beyond through academic and applied research excellence. We reach out to make a productive cooperation partner with prestigious institutions overseas. The student attainment, research achievement and international collaboration growth has earned XMUT the status as a first-tier university in Fujian Province.',
      location: 'No.600 Ligong Road, Jimei District, Xiamen, 361024, Fujian Province, China',
      imageURL: 'assets/images/x3.jpg',
      website: 'https://english.xmut.edu.cn/',
      phone: '086.592.6291536',
      email: 'xmlg@xmut.edu.cn',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              child: Icon(
                Icons.school_outlined,
              ),
            ),
            SizedBox(width: 10),
            Text('University In Xiamen'),
          ],
        ),
      ),
    );
  }
}
