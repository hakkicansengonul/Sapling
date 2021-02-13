import 'package:flutter/material.dart';
import 'package:sapling/main.dart';
import 'package:sapling/new_data/trees.dart';
import 'package:sapling/new_data/list_basket.dart';
import 'package:sapling/new_data/list_tile.dart';
import 'package:sapling/screen/payment_screen.dart';

class second_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Sow Seedlings';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: CircleAvatar(
                  radius: 10.0,
                  backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427_1280.jpg"),
                ),
              ),
              list_tile(
                text: 'My Seedlings',
              ),
              list_tile(
                text: 'My Registered cards',
              ),
              list_tile(
                text: 'Settings',
              ),
              ListTile(
                tileColor: Colors.white12,
                title: Text('Sign Out'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => user_screen()),
                  );
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          // leading: Icon(
          // Icons.menu,
          //),
          title: Center(child: Text(title)),
          actions: [
            IconButton(
                icon: Icon(Icons.exit_to_app),
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(
                    width: 5.0,
                  ),
                  Tress(
                    linkurl:
                        "https://cdn.pixabay.com/photo/2015/09/21/20/56/seedling-950713_1280.jpg",
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Tress(
                    linkurl:
                        "https://cdn.pixabay.com/photo/2016/11/19/15/54/hand-1840039_1280.jpg",
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Tress(
                    linkurl:
                        "https://cdn.pixabay.com/photo/2017/03/27/21/53/garden-2180359_1280.jpg",
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Tress(
                    linkurl:
                        "https://cdn.pixabay.com/photo/2017/03/13/07/42/tree-2139015_1280.jpg",
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Tress(
                    linkurl:
                        "https://cdn.pixabay.com/photo/2017/04/09/22/14/oak-sapling-2217065_1280.jpg",
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Tress(
                    linkurl:
                        "https://cdn.pixabay.com/photo/2017/03/13/11/59/tree-2139483_1280.jpg",
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.blueGrey,
              height: 350.0,
              child: ListView(
                children: [
                  list_basket(
                    name: "Çam Ağacı Fidanı",
                    number: "2",
                  ),
                  list_basket(
                    name: "Meşe Ağacı Fidanı",
                    number: "1",
                  ),
                  list_basket(
                    name: "Kavak Ağacı Fidanı",
                    number: "3",
                  ),
                  list_basket(
                    name: "Zeytin Ağacı Fidanı",
                    number: "6",
                  ),
                  list_basket(
                    name: "Gürgen Ağacı Fidanı",
                    number: "1",
                  ),
                  list_basket(
                    name: "Kayın Ağacı Fidanı",
                    number: "4",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (Payment_screen())),
                );
              },
              child: Text(
                "Complete The Shopping",
              ),
            )
          ],
        ),
      ),
    );
  }
}
