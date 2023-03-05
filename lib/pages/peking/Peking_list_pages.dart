import 'package:final_project/pages/peking/peking_detail_pages.dart';
import 'package:flutter/material.dart';
import 'package:final_project/models/project_detail.dart';
import 'package:intl/intl.dart';

class PekingListPage extends StatefulWidget {
  const PekingListPage({Key? key}) : super(key: key);

  @override
  State<PekingListPage> createState() => _PekingListPageState();
}

class _PekingListPageState extends State<PekingListPage> {
  List<ProjectDetail> projects = [
    ProjectDetail(
      name: 'Tsinghun University',
      description: 'The campus of Tsinghua University is situated in northwest Beijing on the site of the former imperial gardens of the Qing Dynasty, and surrounded by a number of historical sites.',
      location: 'Tsinghua  University Haidian District, Beijing, 100084, P. R. China',
      imageURL: 'assets/images/p1.jpg',
      website: 'https://www.tsinghua.edu.cn/en/index.htm',
      phone: '010-62793001',
      email: 'webmaster@tsinghua.edu.cn',
    ),
    ProjectDetail(
      name: 'Peking University',
      description: 'Peking University is a cradle of top-quality and creative students, a major source of cutting-edge science and knowledge innovation, and a key bridge for international exchange. It has six faculties, namely Humanities, Social Sciences, Economics and Management, Science, Information Technology and Engineering, as well as Health Science. It consists of 55 schools and departments, 60 research entities, and ten affiliated hospitals. There are more than 48,600 students (including nearly 2,500 international students) as well as over 12,600 faculty and staff members including over 123 academicians of the Chinese Academy of Sciences and the Chinese Academy of Engineering.',
      location: 'No.5 Yiheyuan Road, Haidian District, Beijing 100871, P.R.China',
      imageURL: 'assets/images/p2.jpg',
      website: 'https://english.pku.edu.cn/',
      phone: '(+86) 010-6275-1246',
      email: 'outreach@pku.edu.cn',
    ),
    ProjectDetail(
      name: 'Beijing Institude of Technology University',
      description: 'The university has established a multidisciplinary academic structure, offering a variety of programs, and is involved in diversified research in the fields of Science, Engineering, Economics, Management, Liberal Arts, and Law. It is a Chinese state Double First Class University Plan university, as identified by the Ministry of Education.',
      location: 'No. 5, South Street, Zhongguancun, Haidian District, Beijing,100081',
      imageURL: 'assets/images/p3.jpg',
      website: 'https://english.bit.edu.cn/',
      phone: '+86-10-6739-2319',
      email: 'internationalaffairs@bjut.edu.cn',
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
            Text('University In Peking'),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (BuildContext context, int index) {
          var project = projects[index];
          var myTextStylescript = const TextStyle(fontSize: 16, color: Colors.black54);

          return Card(
            child: InkWell(
              onTap: () {
                _handleCickProjectItem(projects[index]);
              },
              //ถ้าใช้แค่ _handleCickProjectItem; ไม่ต้อง () {} ต่อท้ายฟังก์ชัน
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            project.imageURL,
                            width: 200.0,
                            height: 200.0,
                            fit: BoxFit.contain, //ไม่ให้รูปมีขอบขาว มีเต็มพื้นที่
                          ),
                          /*Container(
                        width: 80.0,
                        height: 80.0,
                        color: Colors.lightBlueAccent,
                      ),*/
                          const SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(project.name,
                                    style: TextStyle(fontSize: 20.0)
                                    ,overflow: TextOverflow.ellipsis,),
                                  const SizedBox(height: 8.0),
                                  Text('${project.description.toString()} ',
                                    style: myTextStylescript,overflow: TextOverflow.ellipsis,),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                ],
              ),
            ),
          ),
          )
          );
        },
      ),
    );
  }

  void _handleCickProjectItem(ProjectDetail p) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PekingDetailPage(
          project: p!,
        ),
      ),
    );
  }

}
