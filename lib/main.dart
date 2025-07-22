import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/easyconst/colors.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Portfolio App",
      home: Portfolio(),
      theme: ThemeData(fontFamily: 'Poppins'),
      // debugShowCheckedModeBanner: false,
    );
  }
}
//above is internal build

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PorfolioState();
}

class _PorfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Portfolio',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //column is used to arrange widgets vertically i.e layout widget
            children: [
              //Support for multiple widgets in a column
              // Image.asset('assets/images/pfp.jpg'),
              SizedBox(height: 10), // Space between app bar and profile picture
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage('assets/images/pfp.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(height: 10),
                    // Space between profile picture and name
                    Text(
                      'Deephang Thegim',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              /* About Me*/
              Container(
                // margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: color,
                      blurRadius: 30,
                      offset: Offset(0, 2), // Shadow position
                    ),
                  ],
                ),
                child: Text(
                  "I'm a recent graduate with a Bachelor's Degree in Computer Engineering. Passionate about technology, my interests lie in UI/UX Design, Web and App Development.",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: color1,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 4,
                  width: 60,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [Colors.pink, Colors.deepPurple],
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 30,
                        offset: Offset(0, 2), // Shadow position
                      ),
                    ],
                  ),
                ),
              ),
              /* Project*/
              SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Featured Projects',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [Colors.pink, Colors.deepPurple],
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 30,
                          offset: Offset(0, 2), // Shadow position
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.phone_android,
                          size: 50,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Sajha Bookstore',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Buy, Sell, and Rent',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(width: 50),
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [color, Colors.deepPurple],
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 30,
                          offset: Offset(0, 2), // Shadow position
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.phone_android,
                          size: 50,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Sugarcare',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Diabetes Management',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 4,
                  width: 60,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [Colors.pink, Colors.deepPurple],
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 30,
                        offset: Offset(0, 2), // Shadow position
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              /* Education*/
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Education',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                // margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: color,
                      blurRadius: 30,
                      offset: Offset(0, 2), // Shadow position
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // spacing: 10,
                  children: [
                    Text(
                      '• SEE in Computer (3.95/4)',
                      style: TextStyle(
                        color: color1,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Tri-Padma Vidhyashram Secondary School, Pulchowk, Lalitpur',
                      style: TextStyle(color: color1, fontSize: 18),
                    ),
                    SizedBox(height: 15),
                    Text(
                      '• +2 in Physics (3.75/4)',
                      style: TextStyle(
                        color: color1,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Tri-Padma Vidhyashram Secondary School, Pulchowk, Lalitpur',
                      style: TextStyle(color: color1, fontSize: 18),
                    ),
                    SizedBox(height: 15),
                    Text(
                      '• Bachelor’s Degree In Computer Engineering (80%)',
                      style: TextStyle(
                        color: color1,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Kathmandu Engineering College, Kalimati, Kathmandu',
                      style: TextStyle(color: color1, fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 4,
                  width: 60,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [Colors.pink, Colors.deepPurple],
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 30,
                        offset: Offset(0, 2), // Shadow position
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              /* Experiences*/
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Experiences',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                // margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: color,
                      blurRadius: 30,
                      offset: Offset(0, 2), // Shadow position
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // spacing: 10,
                  children: [
                    Text(
                      '• 2025 - Present',
                      style: TextStyle(
                        color: color1,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Software Engineer Intern at SMAIT Technology/Software, Pokhara, Gandaki, Lisboa, Portugal',
                      style: TextStyle(color: color1, fontSize: 18),
                    ),
                    SizedBox(height: 15),
                    Text(
                      '• 2020 - 2021',
                      style: TextStyle(
                        color: color1,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Front-End Internship at Momtech Company, Shankhamul, Kathmandu',
                      style: TextStyle(color: color1, fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 4,
                  width: 60,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [Colors.pink, Colors.deepPurple],
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 30,
                        offset: Offset(0, 2), // Shadow position
                      ),
                    ],
                  ),
                ),
              ),
              /* Contact Me*/
              SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Get in Touch',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () =>
                        _launchURL('https://github.com/mrdeephang'),
                    icon: FaIcon(
                      FontAwesomeIcons.github,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () => _launchURL(
                      'https://www.linkedin.com/in/deephang-thegim-b858ab314/',
                    ),
                    icon: FaIcon(
                      FontAwesomeIcons.linkedin,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _launchURL(String url) async {
  final uri = Uri.parse(url);
  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $url';
  }
}
