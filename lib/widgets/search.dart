import 'package:cmb_question_bank/api/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Search extends StatelessWidget {
  TextEditingController _searchController;

  Search(BuildContext context) {
    _searchController = new TextEditingController();
    _searchController.addListener(() {
      String text = _searchController.text.trim();
      if (text.isNotEmpty) {
        context.read<QuestionListProvider>().search(text);
      } else {
        context.read<QuestionListProvider>().clear();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        child: new Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Center(
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                controller: _searchController,
                keyboardType: TextInputType.text,
                style: Theme.of(context).textTheme.bodyText1,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 10.0),
                  hintText: "请输入关键字",
                  hintStyle: Theme.of(context).textTheme.bodyText2,
                  filled: true,

                  fillColor: Theme.of(context).backgroundColor,
                  focusColor: Theme.of(context).accentColor,
                  hoverColor: Theme.of(context).accentColor,
                  // Theme.of(context).backgroundColor,
                  prefixIcon: Icon(
                    Icons.search,
                    // color: Theme.of(context).accentIconTheme.color,
                  ),
                  suffixIcon: InkWell(
                    onTap: () => _searchController.clear(),
                    child: Icon(Icons.clear),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(
                        width: 0, color: Theme.of(context).accentColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 0, color: Theme.of(context).backgroundColor),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
                onTap: () {
                  _searchController.clear();
                  context.read<QuestionListProvider>().clear();
                },
              ),
            )));
  }
}
