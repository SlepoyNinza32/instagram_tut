import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page_tutorial/history_model.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<HistoryModel> historyModel = [
    HistoryModel(title: 'New', image: 'add_history.png'),
    HistoryModel(title: 'Friends', image: 'history1.png'),
    HistoryModel(title: 'Sport', image: 'history2.png'),
    HistoryModel(title: 'Design', image: 'history3.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.lock_outlined,
                color: Colors.black,
              ),
              Text(
                'jacob_I',
                style: TextStyle(color: Colors.black),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              )
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.grey, width: 2),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                          child: ClipOval(
                            child: Image.asset('oval.png'),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('54'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('post'),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('834'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Followers'),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('162'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Following'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 4,
                ),
                child: Text(
                  'Jacob West',
                  style:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 4,
                ),
                child: Row(
                  children: [
                    Text(
                      'Digital goodies disigner ',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      '@pixsellz',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 4,
                ),
                child: Text(
                  'Everything is designed',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: 30,
                    child: Center(
                      child: Text(
                        'Edit Profile',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  //border: Border.symmetric(horizontal: BorderSide(color: Colors.grey, width: 2), vertical: BorderSide.none)
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.145,
                child: ListView.separated(
                  itemCount: historyModel.length,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 4,
                  ),
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                width: 3,
                                color: Colors.pink,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  width:
                                      MediaQuery.of(context).size.height * 0.035,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: ClipOval(
                                child: Image.asset(
                                  historyModel[index].image,
                                  fit: BoxFit.cover,
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.height * 0.04,
                                ),
                              ),
                            ),
                          ),
                          Text(historyModel[index].title),
                        ],
                      );
                    }
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 3,
                              color: Colors.pink,
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                width: 3,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                historyModel[index].image,
                                fit: BoxFit.cover,
                                height: MediaQuery.of(context).size.height * 0.1,
                                width: MediaQuery.of(context).size.height * 0.1,
                              ),
                            ),
                          ),
                        ),
                        Text(historyModel[index].title),
                      ],
                    );
                  },
                ),
              ),
              TabBar(
                tabs: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    child: Icon(Icons.grid_3x3,color: Colors.grey,),
                  ),
                  Icon(Icons.person_pin_outlined, color: Colors.grey),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      //shrinkWrap: true,
                      //physics: NeverScrollableScrollPhysics(),
                      itemCount: 9,
                      itemBuilder: (context, index) =>
                          GridTile(child: Image.asset('Rectangle.png')),
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      itemCount: 9,
                      itemBuilder: (context, index) =>
                          GridTile(child: Image.asset('Rectangle.png')),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
