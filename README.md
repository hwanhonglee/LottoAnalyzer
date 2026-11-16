# 육사오 데이터랩

공통 버전 **9.10.1** · Android 빌드 **10101**

[Windows 실행 파일](LottoAnalyzer.exe) · [배포 파일 모음](https://github.com/hwanhonglee/LottoAnalyzer/releases/tag/v9.10.1) · [새 화면 보기](previews/9.10.1/README.md) · [사용 안내](README.txt)

공개 6/45 자료로 번호와 조합 구조를 분석하고, 번호 생성·내 번호 저장·QR·과거 모의검증을 제공합니다.

9.10.1은 **평균 도달 위치 분석·생성**을 PC와 Android·iOS 공통 코드에 연결했습니다. 목표 등수와 줄 수를 고르면 과거 평균을 분석하고 예상 순번 구간에서 1~30줄을 생성합니다. 기본 화면에는 번호와 저장을 먼저 보여주고, 모델 비교·과거 결과·긴 설명은 펼쳐 확인합니다. 큰 글자에서도 줄바꿈과 스크롤로 내용을 읽을 수 있습니다.

Windows는 위 실행 파일 또는 릴리스 ZIP을, Android는 릴리스의 APK를 사용하세요. Google Play 제출용 AAB는 별도로 준비하며 이 저장소 갱신이 스토어 게시 완료를 뜻하지는 않습니다.

Android·iOS 소스와 비용함수 설계는 비공개 저장소에서 관리합니다. iOS 공통 기능과 빌드용 소스는 갱신했으며, 서명된 IPA와 App Store 배포는 Mac·Xcode·Apple 서명이 필요한 별도 단계입니다.

점수·순위·평균 위치는 미래 당첨확률이 아닙니다. 순서를 무작위로 섞으면 특정 순번 구간에서 고르는 번호도 적격 조합 전체에서 무작위로 고르는 것과 같은 분포입니다. 복권 구매·결제·당첨금 지급 기능은 제공하지 않습니다.

[개인정보처리방침](PRIVACY.md) · [제3자 데이터 고지](THIRD_PARTY_NOTICES.md)

프로그램 파일 검증은 `verify_program_integrity.bat`를 사용합니다. 같은 폴더의 `SHA256SUMS.txt`를 기준으로 검사합니다.
