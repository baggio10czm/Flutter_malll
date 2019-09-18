import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../services/ScreenAdapter.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var _keyword;
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Scaffold(
      appBar: AppBar(
          title: Container(
            width: double.infinity,
            height: ScreenAdapter.height(68),
            padding: EdgeInsets.only(left: 5),
            decoration: BoxDecoration(color: Color.fromRGBO(233, 233, 233, 0.8), borderRadius: BorderRadius.circular(30)),
            child: TextField(
              autofocus: true,
              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none)),
              onChanged: (value){
                this._keyword = value;
              },
            ),
        ),
        actions: <Widget>[
          InkWell(
            child: Container(
              width: ScreenAdapter.height(80),
              height: ScreenAdapter.height(68),
              child: Row(
                children: <Widget>[
                  Text('搜索')
                ],
              ),
            ),
            onTap: (){
              Navigator.pushReplacementNamed(context, '/productList',arguments: {'keyword':this._keyword});
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(ScreenAdapter.width(16)),
        child: ListView(
          children: <Widget>[
            Text('热搜',style: Theme.of(context).textTheme.title),
            Divider(),
            Wrap(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(ScreenAdapter.width(12)),
                  padding: EdgeInsets.all(ScreenAdapter.width(10)),
                  decoration: BoxDecoration(
                     color: Color.fromRGBO(233, 233, 233, .9),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('太难了'),
                ),
                Container(
                  margin: EdgeInsets.all(ScreenAdapter.width(12)),
                  padding: EdgeInsets.all(ScreenAdapter.width(10)),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(233, 233, 233, .9),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('海淘'),
                ),
                Container(
                  margin: EdgeInsets.all(ScreenAdapter.width(12)),
                  padding: EdgeInsets.all(ScreenAdapter.width(10)),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(233, 233, 233, .9),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('悲剧了'),
                ),
                Container(
                  margin: EdgeInsets.all(ScreenAdapter.width(12)),
                  padding: EdgeInsets.all(ScreenAdapter.width(10)),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(233, 233, 233, .9),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('noNot'),
                ),
                Container(
                  margin: EdgeInsets.all(ScreenAdapter.width(12)),
                  padding: EdgeInsets.all(ScreenAdapter.width(10)),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(233, 233, 233, .9),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('礼品'),
                ),
                Container(
                  margin: EdgeInsets.all(ScreenAdapter.width(12)),
                  padding: EdgeInsets.all(ScreenAdapter.width(10)),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(233, 233, 233, .9),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('孩之宝玩具'),
                ),
                Container(
                  margin: EdgeInsets.all(ScreenAdapter.width(12)),
                  padding: EdgeInsets.all(ScreenAdapter.width(10)),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(233, 233, 233, .9),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('钻石显卡G0051'),
                ),
                Container(
                  margin: EdgeInsets.all(ScreenAdapter.width(12)),
                  padding: EdgeInsets.all(ScreenAdapter.width(10)),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(233, 233, 233, .9),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('黄金cPU'),
                ),
                Container(
                  margin: EdgeInsets.all(ScreenAdapter.width(12)),
                  padding: EdgeInsets.all(ScreenAdapter.width(10)),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(233, 233, 233, .9),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('魔兽世界怀旧'),
                ),
              ],
            ),
            SizedBox(height: ScreenAdapter.width(16)),
            Text('历史记录',style: Theme.of(context).textTheme.title),
            Divider(),
            Column(
              children: <Widget>[
                ListTile(
                  title: Text("女装"),
                ),
                Divider(),
                ListTile(
                  title: Text("女装"),
                ),
                Divider(),
                ListTile(
                  title: Text("男装"),
                ),
                Divider(),
                ListTile(
                  title: Text("手机"),
                ),
                Divider(),
                ListTile(
                  title: Text("鞋子"),
                ),
                Divider(),
                ListTile(
                  title: Text("鞋子"),
                ),
                Divider(),
                ListTile(
                  title: Text("鞋子"),
                ),
                Divider(),
                ListTile(
                  title: Text("鞋子"),
                ),
                Divider(),
                ListTile(
                  title: Text("鞋子"),
                ),
                Divider(),
              ],
            ),
            SizedBox(height: 60),
            InkWell(
              onTap: (){

              },
              child: Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                padding: EdgeInsets.all(ScreenAdapter.width(20)),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(233, 233, 233, .9),
                    borderRadius: BorderRadius.circular(20),
//                    border: Border.all(color: Colors.black45, width: 1)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.delete),
                    Text('清空历史记录')
                  ],
                ),
              )
            )
          ],
        )
      )
    );
  }
}
