import 'package:farooq_streetfood/userLayouts/item_recipes.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  static bool switchValue = false;

  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff171717),
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(200),
            child: Column(
              children: [],
            ),
          ),
          leading: Column(

          ),
          actions: [
            Icon(Icons.notification_add),
            SizedBox(
              width: 10,
            ),
            Builder(
              builder: (context) => GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Icon(Icons.menu),
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        drawer: Drawer(
          width: 250,
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 72,
                            width: 72,
                            decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                border: Border.all(
                                  color: Color(0xff929292),
                                ),
                                shape: BoxShape.circle),
                            child: Center(
                              child: CircleAvatar(
                                radius: 32,
                                backgroundImage:
                                    AssetImage('images/profile.png'),
                              ),
                            )),
                        Switch(
                          activeColor: Color(0xffF7BB0E),
                          value: HomeLayout.switchValue,
                          onChanged: (bool value) {
                            setState(() {
                              HomeLayout.switchValue = value;
                            });
                          },
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'John',
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("abc@gmail.com"),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 50, top: 30),
                child: Card(
                  elevation: 2,
                  child: Container(
                    height: 32,
                    width: 228,
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings,
                          color: Color(0xffF7BB0E),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Setting"),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xffF7BB0E),
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 50, top: 10),
                child: Card(
                  elevation: 2,
                  child: Container(
                    height: 32,
                    width: 228,
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout,
                          color: Color(0xffF7BB0E),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Logout"),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xffF7BB0E),
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 153,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int i) => Transform(
                    transform: Matrix4.skewX(-0.15),
                    child: Container(
                      width: 302,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'images/food.jpg',
                          ),
                        ),
                      ),
                    ),
                  ),
                  separatorBuilder: (context, int i) => SizedBox(
                    width: 15,
                  ),
                  itemCount: 7,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'PoppinsSemiBold',
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Icon(Icons.arrow_back_ios_new),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xffF7BB0E),
                  ),
                ],
              ),
              GridView.builder(
                padding: EdgeInsets.all(6),
                itemCount: 20,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 20,
                    childAspectRatio: 1),
                itemBuilder: (BuildContext context, int index) {
                  return ItemRecipes(
                    index: index,
                  );
                },
              ),
            ],
          ),
        ),
        // ListView.builder(
        //   itemBuilder: (context, int i) => Card(
        //     child: ListTile(
        //       title: Text("Farooq"),
        //       subtitle: Text("How are you"),
        //       trailing: Text("09:00"),
        //       leading: CircleAvatar(
        //         radius: 40,
        //         backgroundImage: AssetImage('images/profile.png'),
        //       ),
        //     ),
        //   ),
        //   itemCount: 3,
        // ),
        // ListView(
        //   children: [
        //     ListTile(
        //       title: Text("Farooq"),
        //       subtitle: Text("How are you"),
        //       trailing: Column(
        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //         children: [
        //           Text("09:00"),
        //           Icon(Icons.volume_mute)
        //         ],
        //       ),
        //       leading: CircleAvatar(
        //         radius: 40,
        //         backgroundImage: AssetImage('images/profile.png'),
        //       ),
        //     ),
        //     Divider(
        //       thickness: 2,
        //       indent: 100,
        //     ),
        //     ListTile(
        //       title: Text("Farooq"),
        //       subtitle: Text("How are you"),
        //       trailing: Text("09:00"),
        //       leading: CircleAvatar(
        //         radius: 40,
        //         backgroundImage: AssetImage('images/profile.png'),
        //       ),
        //     ),
        //     Divider(
        //       thickness: 2,
        //       indent: 100,
        //     ),
        //     ListTile(
        //       title: Text("Farooq"),
        //       subtitle: Text("How are you"),
        //       trailing: Text("09:00"),
        //       leading: CircleAvatar(
        //         radius: 40,
        //         backgroundImage: AssetImage('images/profile.png'),
        //       ),
        //     ),
        //     Divider(
        //       thickness: 2,
        //       indent: 100,
        //     ),
        //     ListTile(
        //       title: Text("Farooq"),
        //       subtitle: Text("How are you"),
        //       trailing: Text("09:00"),
        //       leading: CircleAvatar(
        //         radius: 40,
        //         backgroundImage: AssetImage('images/profile.png'),
        //       ),
        //     ),
        //   ],
        // ),
        // body: ListView.separated(
        //   itemBuilder: (context, int index) =>
        //       ListTile(
        //         title: Text("Farooq"),
        //         subtitle: Text("How are you"),
        //         trailing: Text("09:00"),
        //         leading: CircleAvatar(
        //           radius: 40,
        //           backgroundImage: AssetImage('images/profile.png'),
        //         ),
        //       ),
        //   separatorBuilder: (context, int index) => Divider(
        //     thickness: 2,
        //     indent: 100,
        //   ),
        //   itemCount: 10,
        // ),
      ),
    );
  }
}
