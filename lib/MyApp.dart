import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  int _selectedIndex = 0;
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];
    void _onItemTapped(int index) {
      print(index);
      setState(() {
        _selectedIndex = index;
      });
    }

    var n = 0;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: Stack(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          alignment: AlignmentDirectional.center,
          children: [
            Align(
              alignment: AlignmentDirectional.topStart,
              child: SizedBox(
                width: 135.0,
                child: FloatingActionButton(
                  elevation: 0.0,
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.info,
                          color: Colors.amber[800],
                        ),
                        Text(
                          '400',
                          style: TextStyle(
                              color: Colors.amber[800],
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Points',
                          style: TextStyle(
                            color: Colors.amber[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20.0, 0),
              child: Align(
                alignment: AlignmentDirectional.topEnd,
                child: FloatingActionButton(
                  elevation: 0.0,
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  child: Stack(
                    children: [
                      Icon(
                        Icons.circle_notifications_outlined,
                        color: Colors.blue,
                        size: 35.0,
                      ),
                      ClipOval(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: SizedBox(
                          height: 15.0,
                          width: 15.0,
                          child: Material(
                            type: MaterialType.circle,
                            color: Colors.red,
                            child: Text(
                              ' 3',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 100,
            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0.0,
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.blue[100],
          selectedItemColor: Colors.blue[900],
          showUnselectedLabels: true,
          backgroundColor: Colors.transparent,
          enableFeedback: true,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.airplane_ticket_outlined),
              label: 'MyTicket',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          onTap: (_onItemTapped),
        ),
        body: ListView(
          children: [
            SizedBox(
                height: 200.0,
                child: CarouselSlider(
                  options: CarouselOptions(
                      disableCenter: true,
                      autoPlay: true,
                      enableInfiniteScroll: true,
                      height: 200.0,
                      scrollDirection: Axis.horizontal),
                  items: imgList
                      .map((item) => Container(
                            child: Center(
                                child: Image.network(item,
                                    fit: BoxFit.cover, width: 1000)),
                          ))
                      .toList(),
                )),
            SizedBox(
              child: Card(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          color: Colors.amber[50],
                          child: SizedBox(
                            width: 350.0,
                            height: 30.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://i.pinimg.com/originals/85/65/50/856550aa773911d00b76b24aaa4bc467.png'),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                SelectableText(
                                  'Covid : Our Destination are Open to Travel!',
                                  style: TextStyle(
                                    color: Colors.amber[700],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: Colors.black12,
                                  width: 1.0,
                                ),
                              ),
                              child: ClipOval(
                                child: Material(
                                  borderRadius: BorderRadius.circular(10.0),
                                  clipBehavior: Clip.hardEdge,
                                  borderOnForeground: true,
                                  shadowColor: Colors.black,
                                  color: Colors.transparent,
                                  child: InkWell(
                                    splashColor: Colors.red,
                                    child: SizedBox(
                                      width: 56,
                                      height: 56,
                                      child: Icon(
                                        Icons.flight_takeoff_outlined,
                                        color: Colors.orange,
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text('Plane')
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: Colors.black12,
                                  width: 1.0,
                                ),
                              ),
                              child: ClipOval(
                                child: Material(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  borderOnForeground: true,
                                  shadowColor: Colors.black,
                                  color: Colors.transparent,
                                  child: InkWell(
                                    splashColor: Colors.red,
                                    child: SizedBox(
                                      width: 56,
                                      height: 56,
                                      child: Icon(
                                        Icons.train_outlined,
                                        color: Colors.yellow[700],
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text('Train')
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: Colors.black12,
                                  width: 1.0,
                                ),
                              ),
                              child: ClipOval(
                                child: Material(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  borderOnForeground: true,
                                  shadowColor: Colors.black,
                                  color: Colors.transparent,
                                  child: InkWell(
                                    splashColor: Colors.red,
                                    child: SizedBox(
                                      width: 56,
                                      height: 56,
                                      child: Icon(
                                        Icons.hotel_outlined,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text('hotel')
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: Colors.black12,
                                  width: 1.0,
                                ),
                              ),
                              child: ClipOval(
                                child: Material(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  borderOnForeground: true,
                                  shadowColor: Colors.black,
                                  color: Colors.transparent,
                                  child: InkWell(
                                    splashColor: Colors.red,
                                    child: SizedBox(
                                      width: 56,
                                      height: 56,
                                      child: Icon(
                                        Icons.bus_alert_outlined,
                                        color: Colors.green,
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text('Bus')
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: Colors.black12,
                                  width: 1.0,
                                ),
                              ),
                              child: ClipOval(
                                child: Material(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  borderOnForeground: true,
                                  shadowColor: Colors.black,
                                  color: Colors.transparent,
                                  child: InkWell(
                                    splashColor: Colors.red,
                                    child: SizedBox(
                                      width: 56,
                                      height: 56,
                                      child: Icon(
                                        Icons.more_horiz_outlined,
                                        color: Colors.grey[850],
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text('More')
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(5.0, 5.0, 0.0, 0.0),
                            child: SelectableText(
                              '   Upcomming Trip',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 18.0),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(5.0, 5.0, 0.0, 20.0),
                            child: SelectableText(
                              '    You have $n upcoming tickets',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15.0,
                                  color: Colors.black45),
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'see all',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                        disableCenter: true,
                        autoPlay: true,
                        enableInfiniteScroll: true,
                        height: 160.0,
                        scrollDirection: Axis.horizontal),
                    items: imgList
                        .map(
                          (item) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(18.0),
                                border: Border.all(
                                  color: Colors.black26,
                                  width: 1.0,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        5.0, 20.0, 5.0, 10.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Icon(
                                              Icons.train_outlined,
                                              color: Colors.yellow[700],
                                            ),
                                            Text(
                                              'Train',
                                              style: TextStyle(
                                                color: Colors.yellow[700],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '2 Seats',
                                          style: TextStyle(
                                            color: Colors.yellow[700],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        10.0, 0.0, 10.0, 5.0),
                                    child: Divider(
                                      color: Colors.black,
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'MLG',
                                            style: TextStyle(
                                              color: Colors.black54,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Text(
                                            '2 Seats',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Text(
                                            'May 10, 2021',
                                            style: TextStyle(
                                              color: Colors.black38,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Icon(
                                            Icons.arrow_forward_rounded,
                                            color: Colors.green,
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'MLG',
                                            style: TextStyle(
                                              color: Colors.black54,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Text(
                                            '2 Seats',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Text(
                                            'May 10, 2021',
                                            style: TextStyle(
                                              color: Colors.black38,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5.0, 5.0, 0.0, 0.0),
                        child: SelectableText(
                          '   Top Destinations',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 18.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5.0, 5.0, 0.0, 20.0),
                        child: SelectableText(
                          '    Recomended Place for you',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 15.0,
                              color: Colors.black45),
                        ),
                      ),
                    ],
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                      autoPlay: true,
                    ),
                    items: imgList
                        .map((item) => Container(
                              child: Center(
                                  child: Image.network(item,
                                      fit: BoxFit.cover, width: 1000)),
                            ))
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
