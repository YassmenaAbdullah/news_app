
import 'package:flutter/material.dart';
import 'package:news_app/core/model/Sources.dart';

class SourcesTabItem extends StatelessWidget {

  Sources sources;
  bool selected;

  SourcesTabItem(this.sources, this.selected);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration:BoxDecoration(
        color: selected? Theme.of(context).primaryColor : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Theme.of(context).primaryColor,width: 2),
      ),
     child: Text(sources.name??"",
       style:TextStyle(
         color: selected? Colors.white : Theme.of(context).primaryColor
       ),
     ),

    );
  }
}
