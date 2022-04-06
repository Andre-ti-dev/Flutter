import 'package:flutter/material.dart';
import 'package:perfil/models/profile/profile.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  Profile profile = Profile(
      "André Luiz da Silva",
      25,
      "assets/images/profile.jpg",
      ["JS", "PHP", "DART", "REACT", "JAVA"],
      ["JAVASCRIPT: PROGRAMANDO NA LINGUAGEM DA WEB"],
      ["WORDPRESS DEVELOPER", "SALESFORCE DEVELOPER"],
      ["LetMeAsk", "MoveIt"]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PROFILE"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ClipOval(
                child: SizedBox.fromSize(
                  size: Size.fromRadius(48), // Image radius
                  child: Image.asset(
                    profile.avatar,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    //BoxShadow
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.2, 1),
                      blurRadius: 10,
                      spreadRadius: 0.8,
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Text(
                  "😀 NAME: ${profile.name} \n⏳ AGE: ${profile.age} \n👓 TECHS: ${profile.techs.join(', ')}\n📜 CERTS: ${profile.certs.join(', ')}\n💎 XP: ${profile.experiences.join(', ')}\n🏆 PROJECTS: ${profile.projects.join(', ')}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    height: 2,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
