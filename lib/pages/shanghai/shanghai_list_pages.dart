import 'package:final_project/pages/shanghai/shanghai_detail_pages.dart';
import 'package:flutter/material.dart';
import 'package:final_project/models/project_detail.dart';
import 'package:intl/intl.dart';

class ShanghaiListPages extends StatefulWidget {
  const ShanghaiListPages({Key? key}) : super(key: key);

  @override
  State<ShanghaiListPages> createState() => _ShanghaiListPagesState();
}

class _ShanghaiListPagesState extends State<ShanghaiListPages> {
  List<ProjectDetail> projects = [
    ProjectDetail(
      name: 'Fudan University',
      description: '  Fudan University was established in 1905 as Fudan Public School. It was the first institution of higher education to be founded by a Chinese person. The two characters, fù (“return”) and dàn (“dawn”) were borrowed from A Commentary on The Classic of History , of which the part on the Yu and the Xia dynasties mentions: “Brilliant are the sunshine and moonlight, again the morning radiance returns at dawn.” In 1917, the institution was renamed Fudan University, which has been kept ever since.',
      location: '220 Handan Rd., Shanghai(200433)',
      imageURL: 'assets/images/s1.jpg',
      website: 'https://www.fudan.edu.cn/en/',
      phone: '220 Handan Rd., Shanghai(200433)',
      email: '-',
    ),
    ProjectDetail(
      name: 'Tongji University',
      description: '  Tongji University, one of China’s earliest national key universities, is a prestigious institution of higher education that is directly under the Ministry of Education (MOE) and is supported by the Shanghai Municipality. Already in its second centenary, the University has grown into a comprehensive and research-intensive university with distinctive features and an international reputation. The University was among the 36 Class A universities in the list of Double First Class University Plan released by the central government of China in 2017. According to 2019 Global Universities Rankings by US News & World Report, Tongji University ranks 11th in the Country Rank of China and 35th in Best Global Universities in Asia.',
      location: '1239 Siping Road, Shanghai, P.R. China',
      imageURL: 'assets/images/s2.jpg',
      website: 'https://www.tongji.edu.cn/eng/',
      phone: '+86-21-65982200',
      email: 'newscenter@tongji.edu.cn',
    ),
    ProjectDetail(
      name: 'Shanghai Jiao Tong University',
      description: '  Shanghai Jiao Tong University is one of the famous institutions of higher learning with the longest history and reputation at home and abroad. It is a national key university directly under the Ministry of Education and jointly built with Shanghai Municipality. After 125 years of unremitting efforts, Shanghai Jiao Tong University has become a domestic first-class and internationally renowned university, and further defined the vision on constructing a “comprehensive, innovative and international” world-class university.',
      location: '800 Dongchuan RD. Minhang District, Shanghai, China,200240',
      imageURL: 'assets/images/s3.jpg',
      website: 'https://en.sjtu.edu.cn/',
      phone: '+86 21 54740000',
      email: '-',
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
            Text('University In Shanghai'),
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
        builder: (context) => ShanghaiDetailPages(
          project: p!,
        ),
      ),
    );
  }

}
