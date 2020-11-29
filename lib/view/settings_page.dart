import 'package:cmb_question_bank/common/api_url.dart';
import 'package:cmb_question_bank/common/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 100),
          child: SvgPicture.asset(
            'assets/images/logo.svg',
            semanticsLabel: 'Logo',
            height: 200,
          ),
        ),
        // Card(
        //   child: ListTile(
        //     dense: true,
        //     leading: Icon(FontAwesomeIcons.handHoldingHeart),
        //     title: Text("赞赏"),
        //     onTap: () {},
        //   ),
        // ),
        Card(
          child: Column(
            children: [
              ListTile(
                  dense: true,
                  leading: Icon(Icons.info),
                  title: Text("关于"),
                  onTap: () async {
                    await _showAboutDialog(context);
                  }),
              Divider(
                height: 0,
              ),
              ListTile(
                leading: Icon(Icons.feedback),
                dense: true,
                title: Text("反馈"),
                onTap: () => _launchURL(API_URL.FEEDBACK_URL),
              ),
            ],
          ),
        ),
      ],
    ));
  }

  // 弹出对话框
  Future<bool> _showAboutDialog(BuildContext context) {
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return AboutDialog(
          applicationName: "招行积分题",
          applicationVersion:
              '${Global.packageInfo.version} ( ${Global.packageInfo.buildNumber} )',
          applicationLegalese: "Copyright © 2016-2020 di1shuai",
          applicationIcon: SvgPicture.asset(
            "assets/images/logo.svg",
            width: 50,
          ),
          children: [Text("如果对您有帮助的话，不妨赞赏一下我们，您的支持就是我们不断前进的动力！")],
        );
      },
    );
  }

  void _launchURL(String url) async {

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


}
