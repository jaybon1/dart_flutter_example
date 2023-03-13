import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HRD',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyInfo(),
    );
  }
}

class MyInfo extends StatefulWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  State<MyInfo> createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  
  // 바텀 네비의 상태를 관리할 변수
  int bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    // 화면의 기반(Scaffold)
    return Scaffold(
      appBar: _buildCustomAppBar(),
      // 폰의 노치나 노티바 등을 제외한 화면 영역(SafeArea)
      body: SafeArea(
        // 컨텐츠가 화면보다 클 경우를 가정(ListView)
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          // 리스트뷰는 자식이 여러개 들어갈 수 있다.
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30), // 위쪽 여백
              // 아이콘과 텍스트가 가로로 나열되어야 하므로 Row
              child: Row(
                children: [
                  // 기본 프로필 아이콘
                  const Icon(
                    Icons.account_circle_outlined,
                    size: 130,
                  ),
                  // 아이콘과 텍스트 사이 여백
                  const SizedBox(
                    width: 10,
                  ),
                  // 텍스트가 세로로 나열되어야 하므로 Column
                  Column(
                    // 텍스트를 왼쪽 정렬 (Column 방향의 cross는 가로)
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      // 이름
                      Text("홍길동 님",
                          style: TextStyle(
                            fontSize: 30,
                          )),
                      // 카드
                      Text(
                        "국민내일배움카드",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      // 텍스트들을 약간 위쪽으로 올리기 위한 SizedBox
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // 프로필과 정보 사이 여백
            const SizedBox(
              height: 30,
            ),
            // 정보 테두리를 디자인 하기 위한 컨테이너
            Container(
              // 컨테이너의 너비는 전체 화면
              width: double.infinity,
              // 테두리를 디자인하기 위한 BoxDecoration
              decoration: BoxDecoration(
                  border: Border.all(
                color: const Color.fromRGBO(178, 204, 255, 0.7),
                width: 5,
              )),
              // 테두리 안쪽에 여백을 주기 위한 Padding
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 30,
                ),
                // 정보를 세로로 나열해야 하므로 Column
                child: Column(
                  children: [
                    // 정보 모양이 비슷하므로 메소드로 분리 (_buildInfoItem)
                    _buildInfoItem(
                        title: "나의 카드",
                        secondContent: "카드발급결정",
                        iconData: Icons.credit_card),
                    // 구분선
                    _buildDiv(),
                    _buildInfoItem(
                        title: "나의 상담",
                        firstContent: "상담내역 ",
                        secondContent: "0건",
                        iconData: Icons.chat_outlined),
                    _buildDiv(),
                    _buildInfoItem(
                        title: "나의 훈련",
                        firstContent: "훈련수료 ",
                        secondContent: "1건",
                        iconData: Icons.inventory_outlined),
                    _buildDiv(),
                    _buildInfoItem(
                        title: "나의 관심(훈련)",
                        firstContent: "관심훈련 ",
                        secondContent: "0건",
                        iconData: Icons.pending_actions_outlined),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // 바텀 네비
      bottomNavigationBar: BottomNavigationBar(
        // 바텀네비가 움직이지 않도록 고정
        type: BottomNavigationBarType.fixed,
        // 바텀네비 현재 위치
        currentIndex: bottomNavIndex,
        // 바텀네비 아이템이 눌렸을 때
        // 상태를 변경 할 때에는 setState를 호출해야 한다.(stateful widget에서만)
        onTap: (index) => setState(() {
          bottomNavIndex = index;
        }),
        // 바텀네비 버튼들
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 40,
            ),
            label: "홈",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.screen_search_desktop_outlined,
              size: 40,
            ),
            label: "과정검색",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 40,
            ),
            label: "나의 정보",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_outlined,
              size: 40,
            ),
            label: "도움말",
          ),
        ],
      ),
    );
  }

  Padding _buildDiv() {
    return const Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Divider(),
    );
  }

  PreferredSizeWidget _buildCustomAppBar() {
    // 커스텀 앱바
    return AppBar(
      elevation: 0.5,
      backgroundColor: Colors.white,
      leading: const Padding(
        padding: EdgeInsets.only(left: 30.0),
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.black87,
          size: 35.0,
        ),
      ),
      title: const Center(
        child: Text(
          "나의정보",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 25.0,
          ),
        ),
      ),
      actions: [
        const Icon(
          Icons.search,
          color: Colors.black87,
          size: 35.0,
        ),
        const SizedBox(
          width: 5,
        ),
        Row(
          children: const [
            Icon(
              Icons.menu,
              color: Colors.black87,
              size: 40.0,
            ),
            Text(
              "메뉴",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15.0,
              ),
            ),
            SizedBox(
              width: 10.0,
            )
          ],
        )
      ],
      // 앱바 아래 빈 공간
      bottom: PreferredSize(
        preferredSize: const Size(double.infinity, 20.0),
        child: Container(),
      ),
    );
  }

  Widget _buildInfoItem(
      {required String title,
      String? firstContent,
      required String secondContent,
      required IconData iconData}) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Row(
                children: [
                  Text(
                    // 내용이 없으면 빈값 주입
                    firstContent ?? "",
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(0, 50, 50, 0.6),
                    ),
                  ),
                  Text(
                    secondContent,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: Color.fromRGBO(0, 130, 153, 1),
                    ),
                  ),
                ],
              )
            ],
          ),
          const Spacer(),
          Icon(
            iconData,
            size: 80,
          ),
        ],
      ),
    );
  }
}
