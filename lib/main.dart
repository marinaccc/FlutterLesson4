import 'package:flutter/material.dart';
import 'package:lesson_4/new_box_with_favourite.dart';
import 'package:lesson_4/news_box.dart';

void main() =>  runApp(
    new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(),
            body: NewsBox('Новый урок по Flutter', '''В новом уроке рассказывается в каких случаях применять класс StatelessWidget и StatefulWidget. Приведены примеры их использования.''',
                imageurl: 'https://flutter.su/favicon.png')
            // body: NewsBoxWithFavourite('Новый урок по Flutter', '''В новом уроке рассказывается, в каких случаях применять класс StatelessWidget и StatefulWidget. Приведены примеры их использования.''',
            //     imageurl: 'https://flutter.su/favicon.png', num: 10)
        )
    )
);
