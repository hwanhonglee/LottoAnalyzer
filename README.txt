육사오 데이터랩 공개 배포 및 고객지원

MOBILE APP 9.7.0
- Google Play 표시 이름: 육사오 데이터랩
- Android 패키지 이름: com.hwanhonglee.lottoanalyzer
- 개인정보처리방침: PRIVACY.md
- 외부 당첨 데이터 출처 고지: THIRD_PARTY_NOTICES.md
- 고객지원: hwanhong57@gmail.com

이 공개 저장소는 모바일 앱의 개인정보처리방침·제3자 데이터 고지와
Windows용 완성 제품을 제공합니다. Flutter 모바일 소스 코드는 비공개
LottoAnalyzer-Source 저장소에서 별도로 관리합니다.

MOBILE 9.7.0 UPDATE
- 분석·번호 생성·검증 및 시뮬레이션을 목적별 화면으로 정리
- 8,145,060개 전체 조합의 구조를 정확히 계산해 가장 흔한 구조 유형에서 기본 번호 생성
- 모든 고정 6개 조합의 1등 이론 확률은 동일함을 명시하고 미래 당첨 예측으로 표현하지 않음
- 저장 번호를 목표 회차·최신 회차·최근 기간·전체 회차와 비교해 낙첨 또는 가정 등수 확인
- Android와 iPhone에서 핵심 분석·생성·시뮬레이션·내 번호 흐름을 동일하게 제공

MOBILE 9.6.2 UPDATE
- 홈·분석·생성·검증·내 번호의 5개 핵심 화면으로 Android·iPhone 탐색 구조 통일
- 회차 조회는 분석으로, QR과 저장 번호는 내 번호로 모아 중복 진입 제거
- n+1 모델 검증과 검증 결론 적용 생성을 기본 흐름으로 배치
- 과거 대입·균등성·대량 후보·전수검사는 접힌 고급 연구 도구로 분리
- 낙첨과 1~5등·1~3등 규칙 일치 횟수를 구분해 결과 용어를 명확히 표시
- 좁은 화면과 큰 글자에서도 분석 막대와 주요 화면이 겹치지 않도록 개선

MOBILE 9.6.1 UPDATE
- 45개 번호의 다음 회차 확률을 Brier 점수와 로그 손실로 직접 검증
- 전체 과거 회차를 순차 학습하는 7개 고정 모델과 균등 모델 비교
- 검증을 모두 통과한 규칙이 없으면 공정한 균등 확률 모델을 자동 유지
- 검증된 규칙으로 5줄을 생성하고 내 번호 저장·목표 회차 비교까지 연결
- 다른 곳에서 만든 번호 묶음의 쏠림·중복·번호 범위·조합 겹침 진단
- 선택 조합의 1~5등 가정 횟수와 낙첨 회차·비율·최장 낙첨 구간 표시
- 내 번호를 저장 대상·최신·최근 13/52/100/300회 또는 전체 회차와 가정 비교
- 공정한 6/45 이론 확률과 과거 출현 z편차·베이지안 상대 지표를 분리 표시
- 1천·1만·10만 조합 대량 실험과 회차 단위 순차 백테스트
- 동일 시드 재현·새 시드 실행, 최고 가정 등수별 분포와 복사 가능한 TOP 후보
- 카메라 또는 QR 주소로 1~5게임을 읽어 내 번호에 로컬 저장
- 모든 통계·시뮬레이션은 기기 안에서 수행하며 미래 당첨을 예측하거나 보장하지 않음

DEVELOPER
- Name: 이환홍
- Email: hwanhong57@gmail.com
- Windows version: 9.7.0

NEW IN WINDOWS V9.7.0
- Separates analysis, generation, and validation/simulation into clear primary workflows
- Generates default lines from the exact modal structural class found across all 8,145,060 combinations
- States that every fixed six-number line retains the same theoretical first-prize probability
- Checks saved lines against a target draw, the latest draw, recent periods, or the full history
- Keeps the core analysis, generation, simulation, QR, and saved-number experience aligned with mobile

NEW IN WINDOWS V9.6.2
- Organizes the app into Home, Analysis, Number Generation, Validation & Simulation, My Numbers & QR, and Settings & Information
- Keeps n+1 validation and validation-based generation in the primary flow
- Places uniformity diagnostics, bulk-candidate comparison, and exhaustive historical research under optional advanced tools
- Moves draw lookup under Analysis and QR import plus one-line historical comparison under My Numbers & QR
- Uses explicit hypothetical-result terms for no prize, ranks 1-5, and 1st-3rd prize rule matches
- Preserves automatic/manual generation, local saved numbers, QR import, and target/latest/recent/all-draw comparisons

NEW IN WINDOWS V9.6.1
- Directly scores each model's 45 next-draw number probabilities with Brier score and log loss
- Uses fixed full-history walk-forward validation across seven models; custom settings remain exploratory
- Applies conservative minimum-history, multiple-comparison, log-loss, and recent-stability gates
- Falls back automatically to equal-probability generation when no non-uniform model passes every gate
- Generates five low-overlap lines from the validated rule and connects them to local save and target-draw comparison
- Keeps validation independent of candidate count and random seed
- Shows periods as months or years and keeps detailed research explanations collapsed by default
- Aligns the desktop and mobile validation and generation workflow

FROM WINDOWS V9.5
- Exact Lotto 6/45 odds shown as both percentage and 1 / N
- Explicit historical no-win count, rate, latest win, and longest no-win streak
- Exact binomial diagnostics with descriptive z-scores
- One-click generation and analysis of 1,000 / 10,000 / 100,000 new candidates
- Optional advanced experiment number reproduces the identical sample for verification
- Prominent top-five combination cards, copy-ready numbers, and a percentage distribution chart
- Simulation results describe historical comparisons and never claim future prediction
- Local saved-number list for generated and manually selected games
- Official Lotto 6/45 QR import by camera, PNG/JPEG image, or URL
- Target-draw, latest-draw, and recent/all historical hypothetical comparisons for every saved game

WINDOWS VALIDATION & SIMULATION READING GUIDE
- Recommended workflow: open Validation & Simulation, run the default n+1 validation, read the conclusion, then use "Generate 5 lines from the validation conclusion" and save the lines.
- Only the fixed default validation can enable validated generation. Results from changed custom settings are exploratory comparisons.
- The distribution chart groups each generated candidate by its single best hypothetical historical rank. A bar is a candidate count/rate, not the number of wins or the next-draw probability.
- On one candidate card, 1st-3rd rule-match and 1st-5th rule-match counts are the number of stored historical draws matched by that exact six-number combination.
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
README.txt, NOTICE.txt, SHA256SUMS.txt, verify_program_integrity.ps1, and
verify_program_integrity.bat. Python and a separate _internal folder
are not required. This repository additionally keeps PRIVACY.md and
THIRD_PARTY_NOTICES.md as public web documents for the mobile app.
For stronger trust, sign the EXE with your own Windows code-signing certificate.
The private signing key is not included.

MOBILE
The Windows EXE is not an Android APK. The signed Android App Bundle is built and
published separately from the private Flutter source. Mobile installation must use
an official testing or production track rather than the Windows download below.

MOBILE PRIVACY AND DATA SOURCES
- Privacy policy: PRIVACY.md
- External winning-draw data source notice: THIRD_PARTY_NOTICES.md
