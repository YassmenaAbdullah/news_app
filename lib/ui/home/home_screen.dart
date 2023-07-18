import 'package:flutter/material.dart';
import 'package:news_app/ui/home/category_grid.dart';
import 'package:news_app/ui/category/category_widget.dart';
import 'package:news_app/ui/settings/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Category> category = [
    Category(
      CategoryId: "sports",
      CategoryImage: "assets/images/ball.png",
      CategoryTitle: "Sports",
      CategoryBackgroud: const Color.fromARGB(255, 201, 28, 34),
    ),
    Category(
      CategoryId: "general",
      CategoryImage: "assets/images/Politics.png",
      CategoryTitle: "Politics",
      CategoryBackgroud: const Color.fromARGB(255, 0, 62, 144),
    ),
    Category(
      CategoryId: "health",
      CategoryImage: "assets/images/health.png",
      CategoryTitle: "Health",
      CategoryBackgroud: const Color.fromARGB(255, 237, 30, 121),
    ),
    Category(
      CategoryId: "business",
      CategoryImage: "assets/images/bussines.png",
      CategoryTitle: "Business",
      CategoryBackgroud: const Color.fromARGB(255, 207, 126, 72),
    ),
    Category(
      CategoryId: "technology",
      CategoryImage: "assets/images/environment.png",
      CategoryTitle: "Technology",
      CategoryBackgroud: const Color.fromARGB(255, 72, 130, 207),
    ),
    Category(
      CategoryId: "science",
      CategoryImage: "assets/images/science.png",
      CategoryTitle: "Science",
      CategoryBackgroud: const Color.fromARGB(255, 242, 211, 82),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            selectedCategory == null
                ? 'News App'
                : selectedCategory!.CategoryTitle,
          ),
          centerTitle: true,
        ),
        drawer: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Drawer(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  height: 120,
                  width: double.infinity,
                  color: Theme.of(context).primaryColor,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Text(
                      'News App',
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontSize: 23),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedCategory = null;
                        Navigator.pop(context);
                      });
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.menu,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Categories',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, SettingsScreen.routeName);
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Settings',
                          style: Theme.of(context).textTheme.headline5!.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: selectedCategory == null
            ? Container(
                child: GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 6 / 7,
                  ),
                  itemBuilder: (context, index) => CategoryGridView(
                    category: category[index],
                    index: index,
                    onClickItem: onClick,
                  ),
                  itemCount: category.length,
                ),
              )
            : CategoryScreen(selectedCategory!));
  }

  Category? selectedCategory = null;

  void onClick(Category category) {
    setState(() {
      selectedCategory = category;
    });
  }
}
