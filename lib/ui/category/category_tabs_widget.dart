import 'package:flutter/material.dart';
import 'package:news_app/core/model/Sources.dart';
import 'package:news_app/ui/category/category_tab_item.dart';


class CategoryTabsWidget extends StatefulWidget {
 List<Sources> sources;
 CategoryTabsWidget(this.sources);
  @override
  State<CategoryTabsWidget> createState() => _CategoryTabsWidgetState();
}

class _CategoryTabsWidgetState extends State<CategoryTabsWidget> {
 // => tads
 int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 11),
      child: DefaultTabController(
          length: widget.sources.length,
          child: Column(
            children: [
              TabBar(
                onTap:(index){
                  setState((){
                    selectedIndex = index;
                  });
                },
                indicatorColor: Colors.transparent,
                //    sources to   ( List of tab )
                tabs: widget.sources.map((source) => SourcesTabItem(source,widget.sources.indexOf(source)==selectedIndex)).toList(),
                isScrollable: true,
              ),
            ],
          ),
      ),
    );
  }
}
