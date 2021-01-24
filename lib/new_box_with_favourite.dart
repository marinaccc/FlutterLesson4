import 'package:flutter/material.dart';
import 'package:lesson_4/new_box_favourite.dart';

class NewsBoxWithFavourite extends StatelessWidget {
  final String _title;
  final String _text;
  String _imageUrl;
  int _num;
  bool _like;

  NewsBoxWithFavourite(this._title, this._text, {String imageurl, int num = 0, bool like = false}) {
    _imageUrl = imageurl;
    _num = num;
    _like = like;
  }

  @override
  Widget build(BuildContext context) {
      return Container(
          color: Colors.black12,
          height: 100.0,
          child: Row(children: [
            if (_imageUrl != null && _imageUrl != '')
              Image.network(
                _imageUrl,
                width: 100.0,
                height: 100.0,
                fit: BoxFit.cover,
              )
            else
              Container(),
            Expanded(
                child: Container(
                    padding: EdgeInsets.all(5.0),
                    child: Column(children: [
                      Text(_title,
                          style: TextStyle(fontSize: 20.0),
                          overflow: TextOverflow.ellipsis),
                      Expanded(
                          child: Text(
                        _text,
                        softWrap: true,
                        textAlign: TextAlign.justify,
                      ))
                    ]))),
            NewsBoxFavourite(_num, _like)
          ]));
  }
}
