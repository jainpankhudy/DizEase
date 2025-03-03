import 'package:disease_predictor/screens/homepage.dart';
import 'package:disease_predictor/screens/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';


class aboutPage extends StatefulWidget {
  aboutPage({Key? key}) : super(key: key);

  @override
  State<aboutPage> createState() => _aboutPageState();
}

class _aboutPageState extends State<aboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 0,
        elevation: 0,
      ),
      body: Container(
            color: Color.fromARGB(255, 255, 255, 255),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Container(
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
                  children: [
                    IconButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                        return signIn();
                      }));
                    }, icon: const Icon(CupertinoIcons.chevron_up, color: Color.fromARGB(255, 0, 122, 255),), splashColor: Colors.transparent, highlightColor: Colors.transparent,),
                    IconButton(onPressed: ()=> LaunchEmail(
                      toEmail: 'parthk0902@gmail.com',
                      subject: '',
                      message: 'Hey Developers @DizEase,\n'
                    )
                , icon: const Icon(CupertinoIcons.mail, color: Color.fromARGB(255, 0, 122, 255),), splashColor: Colors.transparent, highlightColor: Colors.transparent),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(
                  children: const[
                    Text('About', style: TextStyle(fontFamily: 'SFPro', fontSize: 34),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Container(
                  color: Colors.transparent,
                  height: MediaQuery.of(context).size.width/9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.transparent,
                        // width: 300,
                        height: 20,
                        child: GestureDetector(
                          onTap: (() {
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                        return HomePage();
                      }));
                          }),
                          child: const Text('Continue to DizEase®', style: TextStyle(fontFamily: 'SFProM', fontSize: 17, color: Color.fromARGB(255, 0, 122, 255) ),)),
    
                      )
                    ],
                  ),
                  ),
              ),
    
              Container(
              height: 0.5,
              width: double.infinity,
              color: Color.fromARGB(255, 199, 199, 207),
              ),

              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text('We believe that many people in this world have a phobia of visiting doctors for regular check-ups and are often concerned about their wellbeing. Through our app, a user will be able to preliminarily diagnose an ailment based on the symptoms they have and the app will be able to predict accurately the possible disease they have and recommend them a visit to the doctor.\n\nThere is also a psychology self-assessment test to determine if your mental state is fine or not.\n\nMoreover, the app also contains emotion detection through machine learning through which users will be able to find out their emotions through a live video feed from the webcam.\n\nTeam DizEase®\nParth Kalia\nRishit Chugh\nPankhudy Jain\nSaptarshi Mukherjee',
                style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 142, 142, 147), fontFamily: 'SFProM'),
                ),
              )
            ]),
          ),
    );
  }
}


Future LaunchEmail({
  required String toEmail,
  required String subject,
  required String message,

})async{
  final url = 'mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(message)}';
  
  // ignore: deprecated_member_use
  if (await canLaunchUrlString(url)){
    // ignore: deprecated_member_use
    await launchUrlString(url);
    
  }
}