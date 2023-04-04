# flutter_lostark

이미지 렌더링 관련 캔버스 대신 html로 렌더러 선택

깃헙페이지에 배포 시 리파지토리명을 base-href로 세팅해야 정상 배포됨

flutter build web --web-renderer html --base-href "/cors_test/"

릴리즈 시 권한 설정을 해줘야 한다

<uses-permission android:name="android.permission.INTERNET" />
