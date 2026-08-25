- 개발자: **이환홍**
- 연락처: **hwanhong57@gmail.com**
- 기준 버전: **9.3.0**

# Android 앱 전환 계획

현재 ZIP은 Windows 프로그램 빌더입니다. Windows EXE를 그대로 APK로 변환할 수는 없으며 Android용 Flutter 프로젝트로 화면·분석 로직을 이식해야 합니다.

Android판에서는 다음 보안을 적용하는 것이 적절합니다.

- 인터넷 권한만 사용하고 연락처·문자·위치·사진 권한은 요청하지 않기
- Android Network Security Configuration으로 평문 HTTP 차단
- HTTPS 고정 호스트 허용목록과 동일한 원격 JSON 검증
- 앱 서명키를 별도 안전 저장하고 APK/AAB 릴리스 서명
- 사용자 계정이 없으므로 비밀번호나 API 비밀키를 앱에 넣지 않기
- 개인 즐겨찾기/구매기록을 추가할 경우 Android Keystore 기반 암호화 저장소 사용
- Play Store 배포 시 Play App Signing과 무결성 기능 사용

V9 Windows판의 SQLite 스키마, 색상 규칙, 가중 생성, 역대 가정 등수 계산, 보안형 업데이트 검증은 Android판에 그대로 옮길 수 있습니다.
