import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:comic/me/EventChannelScene.dart';
import 'package:comic/me/PaintWidgetScene.dart';
import 'package:comic/me/ScrollDemoScene.dart';
import 'package:comic/me/map_scene.dart';
import 'package:comic/public.dart';
import 'package:comic/stream/BlocScene.dart';
import 'package:comic/stream/StreamCounterScene.dart';

import 'me_cell.dart';
import 'me_header.dart';
import 'setting_scene.dart';

class MeScene extends StatelessWidget {
  Widget buildCells(BuildContext context) {
    Screen.updateStatusBarStyle(SystemUiOverlayStyle.dark);
    return Container(
      child: Column(
        children: <Widget>[
          MeCell(
            title: '钱包',
            iconName: 'assets/images/me_wallet.png',
            onPressed: () {},
          ),
          MeCell(
            title: '消费充值记录',
            iconName: 'assets/images/me_record.png',
            onPressed: () {},
          ),
          MeCell(
            title: '购买的书',
            iconName: 'assets/images/me_buy.png',
            onPressed: () {},
          ),
          MeCell(
            title: '我的会员',
            iconName: 'assets/images/me_vip.png',
            onPressed: () {},
          ),
          MeCell(
            title: 'Bloc示例',
            iconName: 'assets/images/me_coupon.png',
            onPressed: () {
              AppNavigator.push(context, BlocScene());
            },
          ),
          MeCell(
            title: 'Stream Api',
            iconName: 'assets/images/me_favorite.png',
            onPressed: () {
              AppNavigator.push(context, StreamCounterScene());
            },
          ),
          MeCell(
            title: 'EventChannel示例',
            iconName: 'assets/images/me_action.png',
            onPressed: () {
              AppNavigator.push(context, EventChannelScene());
            },
          ),
          MeCell(
            title: '自定义widget',
            iconName: 'assets/images/me_theme.png',
            onPressed: () {
              AppNavigator.push(context, PaintWidgetScene());
            },
          ),
          MeCell(
            title: '加载更多示例',
            iconName: 'assets/images/me_record.png',
            onPressed: () {
              AppNavigator.push(context, ScrollDemoScene());
            },
          ),
          MeCell(
            title: '地图',
            iconName: 'assets/images/me_date.png',
            onPressed: () {
              AppNavigator.push(context, MapScene());
            },
          ),
          MeCell(
            title: '关于',
            iconName: 'assets/images/me_comment.png',
            onPressed: () {
              FlutterBridge.goAboutActivity();
            },
          ),
          MeCell(
            title: '电量',
            iconName: 'assets/images/reader_battery.png',
            onPressed: () {
              FlutterBridge.getBatteryLevel();
            },
          ),
          MeCell(
            title: '设置',
            iconName: 'assets/images/me_setting.png',
            onPressed: () {
              AppNavigator.push(context, SettingScene());
            },
          ),
          MeCell(
            title: 'Github网页',
            iconName: 'assets/images/me_feedback.png',
            onPressed: () {
              AppNavigator.pushWeb(context,
                  'https://github.com/ZDfordream/Fluttercomic', 'Github');
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(color: TYColor.white),
        preferredSize: Size(Screen.width, 0),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            MeHeader(),
            SizedBox(height: 10),
            buildCells(context),
          ],
        ),
      ),
    );
  }
}
