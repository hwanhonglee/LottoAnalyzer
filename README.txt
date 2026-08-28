육사오 데이터랩 공개 배포 및 고객지원

MOBILE APP 9.5
- Google Play 표시 이름: 육사오 데이터랩
- Android 패키지 이름: com.hwanhonglee.lottoanalyzer
- 개인정보처리방침: PRIVACY.md
- 제3자 공공데이터 고지: THIRD_PARTY_NOTICES.md
- 고객지원: hwanhong57@gmail.com

이 공개 저장소는 모바일 앱의 개인정보처리방침·제3자 데이터 고지와
Windows용 완성 제품을 제공합니다. Flutter 모바일 소스 코드는 비공개
LottoAnalyzer-Source 저장소에서 별도로 관리합니다.

MOBILE 9.5 UPDATE
- 선택 조합의 1~5등 가정 횟수와 낙첨 회차·비율·최장 낙첨 구간 표시
- 내 번호를 저장 대상·최신·최근 13/52/100/300회 또는 전체 회차와 가정 비교
- 공정한 6/45 이론 확률과 과거 출현 z편차·베이지안 상대 지표를 분리 표시
- 1천·1만·10만 조합 대량 실험과 회차 단위 순차 백테스트
- 모든 통계·시뮬레이션은 기기 안에서 수행하며 미래 당첨을 예측하거나 보장하지 않음

DEVELOPER
- Name: 이환홍
- Email: hwanhong57@gmail.com
- Windows version: 9.5.0

NEW IN WINDOWS V9.5
- Exact Lotto 6/45 odds shown as both percentage and 1 / N
- Explicit historical no-win count, rate, latest win, and longest no-win streak
- Exact binomial diagnostics with descriptive z-scores
- One-click generation and analysis of 1,000 / 10,000 / 100,000 new candidates
- Optional advanced experiment number reproduces the identical sample for verification
- Prominent top-five combination cards, copy-ready numbers, and a percentage distribution chart
- Simulation results describe historical comparisons and never claim future prediction
- Local saved-number list for generated and manually selected games
- Target-draw, latest-draw, and recent/all historical hypothetical comparisons for every saved game

WINDOWS 9.5 SIMULATION READING GUIDE
- The distribution chart groups each generated candidate by its single best hypothetical historical rank. A bar is a candidate count/rate, not the number of wins or the next-draw probability.
- On one candidate card, TOP3 and 5th-or-better counts are the number of stored historical draws matched by that exact six-number combination.
- The five highlighted games rank only within the current generated sample by historical fit. They are not purchase recommendations, future predictions, or the top five among all 8,145,060 combinations.
- Press "Generate and analyze new candidates" for new numbers. The advanced reproducibility control is only for recreating an identical past experiment.

FROM WINDOWS V9.3
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

SAVED NUMBERS
Saved combinations are stored separately in:
  %LOCALAPPDATA%\LottoAnalyzer\user.sqlite
Replacing LottoAnalyzer.exe does not remove them. The app shows the target draw,
latest draw, best historical rank, rank counts, and no-win rate. These are
hypothetical comparisons, not proof of purchase or prize receipt. Windows and
mobile store their lists locally on each device and do not automatically sync.

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
