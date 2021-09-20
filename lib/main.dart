import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pixgem/booting_page.dart';
import 'package:pixgem/pages/artworks/artworks_detail_page.dart';
import 'package:pixgem/pages/artworks/artworks_leaderboard_page.dart';
import 'package:pixgem/pages/artworks/preview_artworks_page.dart';
import 'package:pixgem/pages/home_navigation_tab_pages/home_tabpage.dart';
import 'package:pixgem/pages/home_navigation_tab_pages/mine_tabpage.dart';
import 'package:pixgem/pages/home_navigation_tab_pages/new_artworks_tabpage.dart';
import 'package:pixgem/pages/login/account_manage_page.dart';
import 'package:pixgem/pages/login/login_wizard_page.dart';
import 'package:pixgem/pages/home_navigation_tab_pages/search_tabpage.dart';
import 'package:pixgem/pages/search/search_result_page.dart';
import 'package:pixgem/pages/settings/setting_current_account.dart';
import 'package:pixgem/pages/user/user_detail_page.dart';
import 'package:pixgem/store/global.dart';
import 'package:provider/provider.dart';

import 'pages/user/my_illusts_bookmark.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // 运行APP
  runApp(new MyApp());
  // 状态栏无前景色的沉浸式
  SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
}

/* 初始化一些APP全局设定，不加载内容 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GlobalStore.globalProvider,
      child: new MaterialApp(
        title: 'Pixgem',
        onGenerateRoute: (RouteSettings settings) {
          var routes = <String, WidgetBuilder>{
            "main": (context) => MainPagingWidget(),
            "artworks_leaderboard": (context) => ArtworksLeaderboardPage(),
            "artworks_detail": (context) => ArtWorksDetailPage(settings.arguments!),
            "artworks_view": (context) => PreviewArtworksPage(settings.arguments!),
            "my_illusts_bookmark": (context) => MyIllustsBookmarkPage(),
            "user_detail": (context) => UserDetailPage(settings.arguments!),
            "setting_current_account": (context) => SettingCurrentAccountPage(),
            "login_wizard": (context) => LoginWizardPage(),
            "account_manage": (context) => AccountManagePage(),
            "search_result": (context) => SearchResultPage(settings.arguments!),
          };
          WidgetBuilder builder = routes[settings.name]!;
          return MaterialPageRoute(builder: (context) => builder(context));
        },
        // 启动加载页面，在这里面初始化全局数据
        home: BootingPage(),
        // localizationsDelegates: [
        //   GlobalMaterialLocalizations.delegate,
        //   GlobalWidgetsLocalizations.delegate,
        // ],
        // supportedLocales: [
        //   const Locale('zh', 'CN'),
        //   const Locale('en', 'US'),
        // ],
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.white,
          accentColor: Colors.deepOrangeAccent,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.grey.shade900,
          accentColor: Colors.deepOrangeAccent,
        ),
      ),
    );
  }
}

/* APP主体内容框架：分页框架 （APP视觉上的起始页面）*/
class MainPagingWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainPagingWidgetState();
  }
}

class MainPagingWidgetState extends State<MainPagingWidget> {
  int _currentIndex = 0; // 当前分页
  // 分页组
  List<Widget> _pages = [
    HomePage(),
    NewArtworksTabPage(),
    SearchTabPage(),
    MineTabPage(),
    // SelectLoginPage(),
    // SelectLoginPage(),
  ];
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        onPageChanged: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        controller: _pageController,
        itemCount: _pages.length,
        itemBuilder: (BuildContext context, int index) {
          return _pages[index];
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页", tooltip: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "新作/发现", tooltip: "新作"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "搜索", tooltip: "搜索"),
          // BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "我的", tooltip: "搜索"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "我的", tooltip: "我的"),
        ],
        fixedColor: Theme.of(context).accentColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          // 切换页面
          _pageController.jumpToPage(index);
        },
      ),
    );
  }
}
