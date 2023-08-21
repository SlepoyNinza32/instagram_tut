import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Image.asset('inst_logo.png'),
        leading: Icon(
          Icons.photo_camera_outlined,
          color: Colors.grey,
        ),
        actions: [
          Icon(
            Icons.live_tv_rounded,
            color: Colors.grey,
          ),
          SizedBox(
            width: 15,
          ),
          Transform.rotate(
            angle: 150,
            child: Icon(
              Icons.send,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider(height: 1, color: Colors.grey,),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  //border: Border.symmetric(horizontal: BorderSide(color: Colors.grey, width: 2), vertical: BorderSide.none)
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.1,
                child: ListView.separated(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 4,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          width: 3,
                          color: Colors.pink,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'oval.png',
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.height * 0.1,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10,),
              Divider(height: 1, color: Colors.grey,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => Divider(
                    height: 2,
                    color: Colors.grey,
                  ),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: ListTile(
                            title: Text('joshua_I'),
                            subtitle: Text('Tokyo, Japan'),
                            leading: ClipOval(
                              child: Image.asset('oval.png'),
                            ),
                            trailing: Icon(Icons.more_horiz),
                          ),
                        ),
                        ImageSlideshow(
                          indicatorColor: Colors.blue,
                          onPageChanged: (value) {
                            debugPrint('Page changed: $value');
                          },
                          //autoPlayInterval: 3000,
                          isLoop: true,
                          children: [
                            Image.asset(
                              'Rectangle.png',
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'Rectangle.png',
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'Rectangle.png',
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            //activeIcon: Icon(Icons.home_filled, color: Colors.black12,),
            icon: Icon(
              Icons.home_filled,
              color: Colors.grey,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            //activeIcon: Icon(Icons.search, color: Colors.black12,),
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            label: 'search',
          ),
          BottomNavigationBarItem(
            //activeIcon: Icon(Icons.add_box, color: Colors.black12,),
            icon: Icon(
              Icons.add_box,
              color: Colors.grey,
            ),
            label: 'add',
          ),
          BottomNavigationBarItem(
            //activeIcon: Icon(Icons.favorite_border, color: Colors.black12,),
            icon: Icon(
              Icons.favorite_border,
              color: Colors.grey,
            ),
            label: 'like',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'oval.png',
              fit: BoxFit.cover,
              width: 20,
              height: 20,
            ),
            label: 'profile',
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 10,
      ),
    );
  }
}
