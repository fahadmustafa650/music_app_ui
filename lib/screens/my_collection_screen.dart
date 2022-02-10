import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_app/widgets/custom_slider.dart';

const double size = 40.0;

class MyCollectionScreen extends StatefulWidget {
  static final id = "/my_collection_screen";
  @override
  _MyCollectionScreenState createState() => _MyCollectionScreenState();
}

class _MyCollectionScreenState extends State<MyCollectionScreen> {
  TabController controller;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                'My Collection',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              actions: [
                IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onPressed: null)
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(30),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TabBar(
                      isScrollable: true,
                      unselectedLabelColor: Colors.black,
                      indicatorColor: Colors.white,
                      labelStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                      tabs: <Tab>[
                        Tab(
                          text: "My Playlists",
                        ),
                        Tab(
                          text: "Album",
                        ),
                        Tab(
                          text: "Artist",
                        ),
                      ],
                      controller: controller,
                    ),
                  ],
                ),
              ),
            ),
            bottomSheet: Container(
              margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.025),
              width: screenWidth * 0.95,
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  CustomSliderWidget(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              FontAwesomeIcons.heart,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Last Breath',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Holiday | Adams Terana',
                                style: TextStyle(color: Colors.white30),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        // fit: BoxFit.fill,
                        width: screenWidth * 0.2,
                        height: 55,
                        child: Image(
                          image: AssetImage('assets/images/artist2.jpg'),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 15,
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentIndex,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.black,
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text(''),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text(''),
                ),
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.cameraRetro),
                  title: Text(''),
                ),
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.music),
                  title: Text(''),
                )
              ],
            ),
            body: ListView(
              scrollDirection: Axis.vertical,
              children: [
                SizedBox(
                  height: 20,
                ),
                CustomTileWidget(
                  titleText: 'Create Playlists',
                  subText: 'Add Name and Select Songs',
                  container: Container(
                    width: 60,
                    height: 60,
                    color: Colors.grey,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTileWidget(
                  titleText: 'Liked Songs',
                  subText: '17 songs',
                  container: MultiImagesContainer(),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTileWidget(
                  titleText: 'Hip Hopper',
                  subText: '25 songs',
                  container: MultiImagesContainer(),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTileWidget(
                  titleText: 'Liked Songs',
                  subText: '17 songs',
                  container: MultiImagesContainer(),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTileWidget(
                  titleText: 'Hip Hopper',
                  subText: '25 songs',
                  container: MultiImagesContainer(),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTileWidget(
                  titleText: 'Liked Songs',
                  subText: '17 songs',
                  container: MultiImagesContainer(),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTileWidget(
                  titleText: 'Hip Hopper',
                  subText: '25 songs',
                  container: MultiImagesContainer(),
                ),
              ],
            ),
          )),
    );
  }
}

class MultiImagesContainer extends StatelessWidget {
  const MultiImagesContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage("assets/images/artist1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage("assets/images/artist2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage("assets/images/artist3.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage("assets/images/artist4.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CustomTileWidget extends StatelessWidget {
  final Widget container;
  final String titleText;
  final String subText;
  const CustomTileWidget({
    Key key,
    @required this.container,
    @required this.titleText,
    @required this.subText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          container,
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titleText,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 5,
              ),
              Text(subText)
            ],
          )
        ],
      ),
    );
  }
}
