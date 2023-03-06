import 'package:flutter/material.dart';
import 'package:final_project/models/project_detail.dart';

class PekingDetailPage extends StatelessWidget {
  final ProjectDetail project;

  const PekingDetailPage({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(project.name),
        ),
        body: ListView(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 3),
                child: Container(
                  child: Text(
                    project.name,
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
              ),
              color: Colors.amber[50],
            ),
            Container(
              color: Colors.amber[50],
              child: Image.asset(
                project.imageURL,
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 3),
                child: Container(
                  child: Text(
                    '  ${project.description}',
                    style: TextStyle(fontSize: 20.0, color: Colors.black54),
                  ),
                ),
              ),
              color: Colors.amber[50],
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 3),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.phone,
                        ),
                      ),
                      Text(
                        '  Tel: ${project.phone}',
                        style: TextStyle(fontSize: 20.0, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
              color: Colors.amber[50],
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 3),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.mail_outline_outlined,
                        ),
                      ),
                      Text(
                        '  E-mail: ${project.email}',
                        style: TextStyle(fontSize: 20.0, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
              color: Colors.amber[50],
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 3),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.location_on_outlined,
                        ),
                      ),
                      Text(
                        '  location: ${project.location}',
                        style: TextStyle(fontSize: 20.0, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
              color: Colors.amber[50],
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 3),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.web,
                        ),
                      ),
                      Text(
                        '  website: ${project.website}',
                        style: TextStyle(fontSize: 20.0, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
              color: Colors.amber[50],
            ),
          ],
        ));
  }
}
