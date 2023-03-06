import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        Expanded(child: _buildTabBarView()),
      ],
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      controller: _tabController,
      tabs: const [
        Tab(icon: Icon(Icons.image)),
        Tab(icon: Icon(Icons.article)),
      ],
    );
  }

  Widget _buildTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: [
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            crossAxisCount: 3,
            mainAxisSpacing: 10,
          ),
          itemCount: 42,
          itemBuilder: (context, index) {
            return Image.network(
                "https://picsum.photos/id/${index + 1}/200/200");
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ListView(
            children: [
              _buildArticleItem("2023년에 배워야 할 10가지 프로그래밍 언어", true),
              _buildArticleItem("객체 지향 프로그래밍을 마스터하는 방법", false),
              _buildArticleItem("React 및 Node.js로 웹 애플리케이션 구축", true),
              _buildArticleItem("코드 디버깅을 위한 모범 사례", false),
              _buildArticleItem("Python을 사용한 기계 학습 소개", true),
              _buildArticleItem("iOS 및 Android용 모바일 앱 개발", false),
              _buildArticleItem("보안 코딩: 사이버 공격으로부터 애플리케이션 보호", false),
              _buildArticleItem("오픈 소스 소프트웨어의 세계 탐색", false),
              _buildArticleItem("Django로 RESTful API를 구축하는 방법", true),
              _buildArticleItem("클라우드 컴퓨팅 및 AWS 시작하기", false),
              _buildArticleItem("Unity 및 C#으로 게임 만들기", true),
              _buildArticleItem("테스트 주도 개발: 테스트로 더 나은 코드 작성", false),
              _buildArticleItem("프론트 엔드 웹 개발을 위한 최고의 도구", true),
              _buildArticleItem("성능 및 확장성을 위한 코드 최적화", false),
            ],
          ),
        ),
      ],
    );
  }
}

Widget _buildArticleItem(String content, bool isImage) {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: const BorderRadius.all(Radius.circular(5.0))),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Text(
              content,
              style: const TextStyle(fontSize: 15),
            ),
            isImage ? const Icon(Icons.comment, size: 15) : Container()
          ],
        ),
      ),
    ),
  );
}
