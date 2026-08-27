육사오 데이터랩 공개 배포 및 고객지원

MOBILE APP 9.4
- Google Play 표시 이름: 육사오 데이터랩
- Android 패키지 이름: com.hwanhonglee.lottoanalyzer
- 개인정보처리방침: PRIVACY.md
- 제3자 공공데이터 고지: THIRD_PARTY_NOTICES.md
- 고객지원: hwanhong57@gmail.com

이 공개 저장소는 모바일 앱의 개인정보처리방침·제3자 데이터 고지와
Windows용 완성 제품을 제공합니다. Flutter 모바일 소스 코드는 비공개
LottoAnalyzer-Source 저장소에서 별도로 관리합니다.

DEVELOPER
- Name: 이환홍
- Email: hwanhong57@gmail.com
- Windows version: 9.3.0

NEW IN V9.3
- Manual number selection and comma input
- Historical 1st/2nd/3rd rule-valid combination viewer
- Prize-tier score ranking and weighted generator
- Optional exclusion of exact past first-prize combinations

LOTTO ANALYZER V9 SECURE COLOR + PRIZE HISTORY

NEW FEATURES
- Standard Lotto ball colors everywhere:
  1-10 yellow, 11-20 blue, 21-30 red, 31-40 dark gray, 41-45 green
- Colored HOT/COLD lists, frequency chart/grid, trend lists, history cards, generated numbers, and overlap results
- For every generated combination, calculates the best hypothetical historical prize rank:
  1st = 6 main numbers
  2nd = 5 main + bonus
  3rd = 5 main
  4th = 4 main
  5th = 3 main
- Shows rank counts and past draw examples
- Security tab, DB integrity check, and manual safe backup
- Secure updater with HTTPS allowlist, TLS verification, strict JSON validation, response-size limits, backup, transaction, and SQLite integrity checks
- User DB is migrated to %%LOCALAPPDATA%%\LottoAnalyzer

WINDOWS 실행
1. 공개 배포 파일을 같은 폴더에 내려받습니다.
2. LottoAnalyzer.exe를 실행합니다.

빌더와 원본 소스는 이 공개 저장소에 포함하지 않습니다.

FIRST RUN
The seed DB embedded in the EXE is copied to:
  %LOCALAPPDATA%\LottoAnalyzer\lotto.sqlite
All future weekly updates and backups use the user-data copy.

DISTRIBUTION
The downloadable Windows package is intentionally minimal: LottoAnalyzer.exe,
README.txt, NOTICE.txt, and SHA256SUMS.txt. Python and a separate _internal folder
are not required. This repository additionally keeps PRIVACY.md and
THIRD_PARTY_NOTICES.md as public web documents for the mobile app.
For stronger trust, sign the EXE with your own Windows code-signing certificate.
The private signing key is not included.

MOBILE
The Windows EXE is not an Android APK. The signed Android App Bundle is built and
published separately from the private Flutter source. Mobile installation must use
an official testing or production track rather than the Windows download below.

MOBILE PRIVACY AND PUBLIC DATA
- Privacy policy: PRIVACY.md
- Included public-data attribution and reproducible normalization record: THIRD_PARTY_NOTICES.md
