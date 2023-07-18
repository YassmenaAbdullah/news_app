import 'package:flutter/material.dart';
import 'package:news_app/core/api/api_manager.dart';
import 'package:news_app/core/model/SourcesResponse.dart';
import 'package:news_app/ui/category/category_tabs_widget.dart';
import 'package:news_app/ui/home/category_grid.dart';

class CategoryScreen extends StatelessWidget {
  Category category;
  CategoryScreen(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<SourcesResponse>(
        future: ApiManager.getSources(category.CategoryId),
        builder: (buildContext,snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child:CircularProgressIndicator(
                color: Theme.of(context).primaryColor,),
            );
          }
          if(snapshot.hasError){
            return Center(child: Text("Error Loading date ${snapshot.error.toString()}"),);
          }
          if(snapshot.data?.status == 'error'){
            return Center(child: Text("Server Error${snapshot.data?.message}"),);
          }
          var sources = snapshot.data?.sources;
          return CategoryTabsWidget(sources!);
        },
      ),
    );
  }
}
