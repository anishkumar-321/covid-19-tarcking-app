import 'package:flutter/material.dart';

import 'package:covid_19_tracking_app/utils/color.dart';

import '../animation/faderAnimation.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> with TickerProviderStateMixin {
  late AnimationController _controllerImage;
  late Animation<double> animation;
  late AnimationController _controller;
  final _formKey = GlobalKey<FormState>();
  final _key = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 4000),
      vsync: this,
    );
    _controllerImage = new AnimationController(
        duration: Duration(milliseconds: 3000), vsync: this)
      ..addListener(() => setState(() {}));
    animation = Tween(begin: 5.0, end: 20.0).animate(_controllerImage);
    _controllerImage.repeat();
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    _controllerImage.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Stack(
      children: <Widget>[
        Positioned(
          top: -height * 0.2,
          child: EntranceFader(
            key: _key,
            delay: Duration(milliseconds: 3000),
            duration: Duration(seconds: 5),
            offset: Offset(0, 1200),
            child: Opacity(
              opacity: 0.6,
              child: RotationTransition(
                turns: Tween(begin: 1.0, end: 0.0).animate(_controller),
                child: Image.asset(
                  'assets/images/covidBlue.png',
                  height: height * 0.20,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: height * 0.3,
          right: -width * 0.5,
          child: EntranceFader(
            key: _formKey,
            delay: Duration(milliseconds: 500),
            duration: Duration(seconds: 8),
            offset: Offset(-width - 50, height * 0.5),
            child: Opacity(
              opacity: 0.5,
              child: RotationTransition(
                turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                child: Image.asset(
                  'assets/images/covidRed.png',
                  height: height * 0.18,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Opacity(
            opacity: 0.4,
            child: RotationTransition(
              turns: Tween(begin: 2.0, end: 1.0).animate(_controller),
              child: Image.asset(
                'assets/images/covidGreen.png',
                height: height * 0.2,
              ),
            ),
          ),
        ),
        ListView(
          children:<Widget>[
           PersonalInfo(),
            PersonalInfo2(),
            PersonalInfo1(),


          ]
        )
      ],
    ));
  }
}

class PersonalInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height:2.0),
        SafeArea(
          child: Text('       Covid-19 Prediction And ',style:TextStyle( fontSize: 25.0,
            fontWeight: FontWeight.bold,),)
        ),
        SafeArea(
          child: Text('              Forecasting       ',style:TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
        SizedBox(
          height: 20.0,
          width: 350.0,
          child: Divider(
            thickness:8.0,
            color: Colors.teal.shade100,
          ),
        ),
        Text('DEVELOPED BY:',style:TextStyle(
            fontFamily: 'Source Sans Pro',
            color: Colors.teal.shade100,
            fontSize: 20.0,
            letterSpacing: 2.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height:20.0),
        CircleAvatar(
          maxRadius: height * 0.105,
          backgroundColor: Colors.blue,
          child: CircleAvatar(
            maxRadius: height * 0.10,
            backgroundImage: NetworkImage(
                "https://media.licdn.com/dms/image/D5603AQGf5iemdgVfyw/profile-displayphoto-shrink_400_400/0/1677344274612?e=1684368000&v=beta&t=cUeGLP9bvu9Gh2nDaZwuwrHSlqgftS-B9b8Z-cU6PIk"),
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Text("R.ANISH KUMAR(19P11A0584)",
            style: TextStyle(
                fontFamily: 'MyFont',
                color: kBGColor,
                fontSize: height * 0.03,
                fontWeight: FontWeight.bold)),
        Text("anishravula0@gmail.com",
            style: TextStyle(
                fontFamily: 'MyFont',
                color: kBGColor,
                fontSize: height * 0.03,
                fontWeight: FontWeight.bold)),

        SizedBox(
          height: height * 0.03,
        ),
        SizedBox(
          height: height * 0.02,
        ),
        ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
          ],
        )
      ],
    );
  }
}

class PersonalInfo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          maxRadius: height * 0.105,
          backgroundColor: Colors.blue,
          child: CircleAvatar(
            maxRadius: height * 0.10,
            backgroundImage: AssetImage("images/WhatsApp Image 2023-03-13 at 12.49.29 PM.jpeg"),
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Text("V.SIREESHA(19P11A05B7)",
            style: TextStyle(
                fontFamily: 'MyFont',
                color: kBGColor,
                fontSize: height * 0.03,
                fontWeight: FontWeight.bold)),
        Text("lovelyhoney61570@gmail.com",
            style: TextStyle(
                fontFamily: 'MyFont',
                color: kBGColor,
                fontSize: height * 0.03,
                fontWeight: FontWeight.bold)),
        SizedBox(
          height: height * 0.03,
        ),
        SizedBox(
          height: height * 0.02,
        ),
        ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
          ],
        )
      ],
    );
  }
}


class PersonalInfo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          maxRadius: height * 0.105,
          backgroundColor: Colors.blue,
          child: CircleAvatar(
            maxRadius: height * 0.10,
            backgroundImage: NetworkImage("https://media.licdn.com/dms/image/C5603AQFdz3fnvaVylg/profile-displayphoto-shrink_800_800/0/1662914308361?e=1684368000&v=beta&t=T5Iu0vvpm4miEYMKkcfQwl_cppqgozn4vJz5WBbFCts"),
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Text("S.MAHAMMAD(19P11A05A0)",
            style: TextStyle(
                fontFamily: 'MyFont',
                color: kBGColor,
                fontSize: height * 0.03,
                fontWeight: FontWeight.bold)),
        Text("syedmahammad6@gmail.com",
            style: TextStyle(
                fontFamily: 'MyFont',
                color: kBGColor,
                fontSize: height * 0.03,
                fontWeight: FontWeight.bold)),
        SizedBox(
          height: height * 0.03,
        ),
        SizedBox(
          height: height * 0.02,
        ),
        ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
          ],
        )
      ],
    );
  }
}













class MainInfo extends StatelessWidget {
  final String, username, imgUrl;
  MainInfo(
      {Key? key, required this.username, required this.imgUrl, this.String})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 8,
        shadowColor: Colors.grey[500],
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: ListTile(
            leading: Image(
              height: 50,
              width: 50,
              image: AssetImage(imgUrl),
            ),
            title: Text(
              username,
              style: const TextStyle(color: kBGColor, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
