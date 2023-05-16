import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_share/social_share.dart';

//TODO: Share to other social medias
class ShareContainer extends StatelessWidget {
  String postLink;
  ShareContainer({
    super.key,
    required this.postLink
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
        height: screenHeight * .5,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: <
            Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: const Text('Share with the world',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),
          const Text('Link URL', style: TextStyle(fontSize: 10)),
          Stack(children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      prefixIcon: const Icon(Icons.link),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)))),
            ),
            Positioned(
                top: 7,
                right: 15,
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: ElevatedButton(
                      onPressed: () {},
                      style:
                          ElevatedButton.styleFrom(shape: const CircleBorder()),
                      child: const Icon(Icons.copy)),
                ))
          ]),
          const Text('Social Media'),
          Container(
              padding: const EdgeInsets.all(16),
              height: screenHeight * .2,
              width: screenWidth * .7,
              child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 70,
                      mainAxisSpacing: 30),
                  children: <GridTile>[
                    GridTile(
                        child: TextButton(
                      onPressed: () {},
                      child: const FaIcon(FontAwesomeIcons.facebook,
                          color: Colors.indigoAccent),
                    )),
                    GridTile(
                        child: TextButton(
                            onPressed: () {},
                            child: const FaIcon(FontAwesomeIcons.twitter,
                                color: Colors.blue))),
                    GridTile(
                        child: ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (Rect bounds) => const RadialGradient(
                        center: Alignment.topCenter,
                        stops: <double>[.5, 1],
                        colors: <Color>[
                          Colors.pink,
                          Colors.deepOrange,
                        ],
                      ).createShader(bounds),
                      child: TextButton(
                        onPressed: () {},
                        child: const FaIcon(FontAwesomeIcons.instagram),
                      ),
                    )),
                    GridTile(
                        child: TextButton(
                      onPressed: () {},
                      child: const FaIcon(FontAwesomeIcons.telegram,
                          color: Colors.blueGrey),
                    )),
                    GridTile(
                        child: TextButton(
                      onPressed: () {},
                      child: const FaIcon(FontAwesomeIcons.linkedin,
                          color: Colors.indigo),
                    )),
                    GridTile(
                        child: TextButton(
                      onPressed: () {},
                      child: const FaIcon(FontAwesomeIcons.solidMessage,
                          color: Colors.green),
                    ))
                  ])),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              child: const Text('Share'))
        ]));
  }
}
