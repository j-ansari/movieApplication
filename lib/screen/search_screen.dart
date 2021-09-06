import 'package:flutter/material.dart';
import 'package:movie_application/provider/search_provider.dart';
import 'package:movie_application/widget/search_ui.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  late final TextEditingController controller = TextEditingController();

  @override
  State<StatefulWidget> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchProvider = Provider.of<SearchProvider>
      (context, listen: false);
    searchProvider.searchQuery = widget.controller.text;
    searchProvider.fetchSearchData();

    return Consumer<SearchProvider>(
      builder: (context, data, child) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            title: TextField(
              onChanged: (value) {
                setState(() {
                  widget.controller.text = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'type a part of movie name here...',
                border: InputBorder.none,
                icon: Icon(Icons.search),
              ),
            ),
          ),
          body: data.searchQuery.isEmpty ? Center(
            child: Text('Nothing to Show',
              style: TextStyle(
                color: Colors.amber,
              ),
            ),
          ) : GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2.5 / 3.5,
            ),
            itemCount: data.searchModel.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, position) {
              return SearchUI(
                searchModel: data.searchModel[position],
              );
            },
          ),
        );
      },
    );
  }
}