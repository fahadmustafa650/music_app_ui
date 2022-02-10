import 'package:flutter/material.dart';

import 'my_collection_screen.dart';

const animatedColor = Colors.orange;

class ChooseArtistScreen extends StatefulWidget {
  static final id = "/choose_artist_screen";
  @override
  _ChooseArtistScreenState createState() => _ChooseArtistScreenState();
}

class _ChooseArtistScreenState extends State<ChooseArtistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Choose Artist',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: GridView.count(
        primary: false,
        //padding: const EdgeInsets.all(20),
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        crossAxisCount: 3,
        children: [
          CustomContainerText(
            artistName: 'Sia',
            imgFileName: 'artist1',
          ),
          CustomContainerText(
            artistName: 'Taylor Swift',
            imgFileName: 'artist2',
          ),
          CustomContainerText(
            artistName: 'Atif Aslam',
            imgFileName: 'artist3',
          ),
          CustomContainerText(
            artistName: 'Mustafa Zahid',
            imgFileName: 'artist4',
          ),
          CustomContainerText(
            artistName: 'Sia',
            imgFileName: 'artist1',
          ),
          CustomContainerText(
            artistName: 'Taylor Swift',
            imgFileName: 'artist2',
          ),
          CustomContainerText(
            artistName: 'Atif Aslam',
            imgFileName: 'artist3',
          ),
          CustomContainerText(
            artistName: 'Mustafa Zahid',
            imgFileName: 'artist4',
          ),
          CustomContainerText(
            artistName: 'Sia',
            imgFileName: 'artist1',
          ),
          CustomContainerText(
            artistName: 'Taylor Swift',
            imgFileName: 'artist2',
          ),
          CustomContainerText(
            artistName: 'Atif Aslam',
            imgFileName: 'artist3',
          ),
          CustomContainerText(
            artistName: 'Mustafa Zahid',
            imgFileName: 'artist4',
          ),
          CustomContainerText(
            artistName: 'Sia',
            imgFileName: 'artist1',
          ),
          CustomContainerText(
            artistName: 'Taylor Swift',
            imgFileName: 'artist2',
          ),
          CustomContainerText(
            artistName: 'Atif Aslam',
            imgFileName: 'artist3',
          ),
          CustomContainerText(
            artistName: 'Mustafa Zahid',
            imgFileName: 'artist4',
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, MyCollectionScreen.id);
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.75,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.orange, borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              'Next',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomContainerText extends StatefulWidget {
  final String artistName;
  final String imgFileName;
  const CustomContainerText(
      {Key key, @required this.artistName, @required this.imgFileName})
      : super(key: key);
  @override
  _CustomContainerTextState createState() => _CustomContainerTextState();
}

class _CustomContainerTextState extends State<CustomContainerText> {
  bool isSelected = false;
  String artistName;
  String imgFileName;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    artistName = widget.artistName;
    imgFileName = widget.imgFileName;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isSelected = isSelected == true ? false : true;
            });
          },
          child: Container(
            width: 100,
            height: 100,
            child: isSelected ? CustomAnimationContainer() : null,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage("assets/images/$imgFileName.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          artistName,
          style: TextStyle(
            color: isSelected ? animatedColor : Colors.black,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}

class CustomAnimationContainer extends StatefulWidget {
  @override
  _CustomAnimationContainerState createState() =>
      _CustomAnimationContainerState();
}

class _CustomAnimationContainerState extends State<CustomAnimationContainer>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation animation;

  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
    animation = Tween(begin: 1.0, end: 1.5).animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        final size = 50 * (animationController.value + 1);
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size,
                height: size,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(size / 10),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      animatedColor.withOpacity(0.4),
                      animatedColor.withOpacity(0.85),
                    ],
                    // tileMode: TileMode
                    //     .repeated, // repeats the gradient over the canvas
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
