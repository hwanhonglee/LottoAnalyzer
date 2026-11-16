육사오 데이터랩 공개 배포 및 고객지원

WINDOWS / ANDROID / iOS SOURCE 9.10.1
- 번호 생성 맨 위에서 '평균 위치 다시 예측하고 새 번호 생성'을 실행합니다.
- 과거 회차별 1,000회 평균 도달 순번을 학습하고, 직전 자료와 이전 오차만으로 다음 회차의 평균 위치를 예상합니다.
- 전체 8,145,060개 조합을 채점하여 실제 전수 적격 순서의 예측 구간에서 번호를 선택합니다. 1등 수백만 번째 위치도 지원합니다.
- 최초 전수 채점에는 수십 초가 걸릴 수 있으며 같은 자료에서는 저장한 점수를 다시 사용합니다.
- 예상 범위는 평균 위치의 범위이며 한 번의 당첨 위치 확률 구간이나 당첨 보장이 아닙니다.
- 기본 화면에는 생성과 번호를 먼저 보여주고 모델 비교·과거 결과·긴 설명은 펼쳐서 확인합니다.
- 새 회차 결과가 반영되면 그 직전까지의 정보로 평균 위치 연구를 자동 연장하고 다음 회차를 예측합니다.
- 기존 자동 연구·직접 설정·일반 생성은 고급 도구에 유지합니다.
- 새 결과의 '과거 예측·실제 평균·대표 도달 비교'에서 당시 예측과 실제 1,000회 평균을 비교합니다.
- 이전 자동 연구 결과의 '과거 정답과 도달 결과 보기'에서는 회차별 예상 점수 구간·실제 정답·도달 예시를 확인합니다.
- 대표 도달 예시 1회, 정확 분포 평균, 1,000회 반복 평균을 구분하고 회차별 CSV를 저장합니다.
- 이전 최빈 순번창 방식을 쓰려면 접힌 고급 도구에서 이전 자동 연구를 열고 '연구 다시 분석하고 새 번호 생성'을 누릅니다.
- 과거 연구를 비교해 모델·점수 구간·생성 순번창을 자동 결정하고 새 후보에서 최종 번호를 선택합니다.
- 조합별 실제 생성 순번·점수·상위 위치와 선택 근거를 확인하고 내 번호·CSV·JSON으로 저장합니다.
- 같은 자료라면 분석 판단은 같을 수 있지만 새 시드로 후보와 번호를 매번 바꿉니다.
- 직접 구간을 정하려면 '직접 설정·고급 도구'에서 기존 생성 계획을 엽니다.
- 고정 1000회/최신 갱신 모델, 예상 분포·추세 또는 직접 점수·상위 위치 구간을 고릅니다.
- 후보 1만·3만·10만·30만·100만 개 탐색과 최종 1~30줄을 따로 설정합니다.
- 조건 통과 후보에서 중복 없이 무작위 선택하며, 번호별 점수·상위 위치와 설정 JSON·CSV를 보관합니다.
- 새 후보 검토와 같은 후보에서 다시 선택을 구분합니다. 과거 첫 당첨 평균을 정답 순번이나 권장 구매량으로 쓰지 않습니다.
- 구간 포함률과 동일 모델의 무작위 구간 비중을 함께 표시합니다.
- 최종 10줄·30줄의 일치 개수, 낙첨/당첨 등수와 중복을 같은 줄 수의 무작위 번호와 비교합니다.
- 추첨 전 생성 설정과 실제 번호를 고정하고, 해당 목표 회차 결과로 별도 비교합니다. 기기 시각 기준 로컬 기록이며 서버 공증은 아닙니다.
- 번호 생성 > 전체 데이터 점수 우선에서 '전체 분포로 생성'과 '시작 회차 추세로 생성'을 선택합니다.
- 시작 회차부터 최신 회차까지의 실제 점수와 참고 구간을 확인한 뒤 그 점수 구간 안에서만 생성합니다.
- 추세는 실험적 가정이며 당첨 예측 우위가 검증된 방식이 아닙니다. 기존 생성·저장·QR은 유지합니다.
- 큰 글씨로 보기, 줄바꿈 메뉴, 기본 접힘 사용 안내로 접근성을 개선했습니다.
- 당첨번호 점수·순위 검증: 1천·1만·10만·100만·전체 8,145,060개 비교 (기존 1,200개 유지)
- 100만·전체는 분할 계산 및 진행률 제공. 대규모 후보 수는 검증 전용이며 매우 오래 걸릴 수 있습니다.
- 생성한 번호 묶음이 덮는 1~3등 본번호 조합을 최대 100줄까지 정확히 계산
- 중복·유사 조합을 반영한 범위 효율과 같은 줄 수의 무작위 고유 조합 평균을 비교
- 목표 이론값별 평균 줄 수와 1줄 1,000원 단순 환산액을 표시하되 구매 권장이나 예측값과 구분
- 분석의 기준 설명, 과거 모의검증의 모델 성능·당첨번호 점수 위치, 번호 생성의 실제 조합 만들기를 각 화면에서 구분
- 실제 당첨번호 S점수·순위 분포를 독립 메뉴에서 확인하고 같은 후보 수와 과거 중앙 50% 순위 구간을 번호 생성으로 전달
- 기존 11개 자동 생성 방식, 수동 번호, 조건 설정, 상세 근거, 저장·QR·백업·전수검사 기능을 유지하는 화면 재구성
- 상세 기능지도와 이전/이후 위치 비교: 비공개 소스 저장소의 docs/UI_GUIDE_WINDOWS_9.8.7.md

WINDOWS 9.8.6 UPDATE
- 1001회부터 최신 회차까지 실제 당첨번호를 회차 직전 데이터만으로 채점하고, 회차마다 최대 100,000개 비교표본 안의 위치를 누수 없이 순차검증
- 1,200개·10,000개·100,000개 비교 중 하나를 선택하고 실제 당첨번호 1개를 같은 회차의 동일확률 대조 조합과 함께 채점해 점수·순위 분포를 확인
- 점수대별 실제 평균·중앙 순위, 회차별 순위·20회 이동평균, 상위 구간 포착률과 전체 CSV 제공
- 번호 생성에서 후보 수를 고른 뒤 상위 N위·과거 당첨번호 중앙 50%·직접 지정한 시작~끝 순위 구간 중 하나를 선택
- 넓은 순위 구간에서는 최대 30게임을 구간 전체에 고르게 나눠 선택하고 각 번호의 실제 후보풀 순위를 표시
- `분석`은 점수 기준 이해, `과거 모의검증`은 과거 성능·실제 당첨번호 위치 확인, `번호 생성`은 선택한 기준의 번호 생성으로 화면 역할 정리
- 점수와 후보풀 순위는 과거·이론 데이터의 설명 위치이며 미래 당첨확률 순위가 아님을 명확히 표시

MOBILE APP 9.10.1 (BUILD 10101)
- 번호 생성 맨 위에 PC와 같은 평균 도달 위치 분석·생성 기능을 추가했습니다.
- Android와 iOS는 동일한 Flutter 분석·생성·저장 화면을 사용합니다.
- 새 평균 위치 생성은 전수 적격 조합의 실제 순번을 사용하며 모델 비교·과거 결과·계산 한계는 펼쳐 확인합니다.
- 동일 모델 기준 점수·구간 비교, 최종 10줄·30줄 검증, 추첨 전 로컬 기록을 추가했습니다.
- 번호 생성 > 분포·추세로 생성에서 전체 결과 분포 또는 시작 회차부터 추세를 선택합니다.
- Google Play 표시 이름: 육사오 데이터랩
- Android 패키지 이름: com.hwanhonglee.lottoanalyzer
- 개인정보처리방침: 공개 저장소의 PRIVACY.md
- 외부 당첨 데이터 출처: 공개 저장소의 THIRD_PARTY_NOTICES.md
- 고객지원: hwanhong57@gmail.com

이 공개 저장소는 모바일 앱의 개인정보처리방침·제3자 데이터 고지와 Windows용
완성 제품을 제공합니다. Flutter 모바일 소스는 비공개 LottoAnalyzer-Source
저장소에서 별도로 관리합니다.

MOBILE 9.9.0 UPDATE
- Windows와 같은 1~3등 이론 커버리지, 범위 효율, 목표 기준값 비교를 일반·점수 순위 생성 결과에 추가
- Android와 iOS가 동일한 Flutter 계산 코드와 검증 자료를 사용
- 둥근 카드·알약형 메뉴와 파스텔 색상으로 Windows·Android·iOS 화면을 통일
- 분석·번호 생성·과거 모의검증·내 번호/QR의 핵심 동선을 더 또렷하게 정리
- 작은 화면과 큰 글자 환경에서도 메뉴와 결과를 읽기 쉽도록 반응형 화면을 개선

MOBILE 9.8.2 UPDATE
- 전체 데이터 점수 후보 1,200개 중 적합도 상위 20%를 통과한 조합만 기본 생성에 사용
- 각 조합에 후보풀 순위·백분위와 통과 기준을 표시
- 접힌 상세정보에서 적합도·비용·구조·기간·최근 흐름, 9개 구조 기준과 4개 흐름 기준을 표시
- 과거 회차 대입의 최고 가정 등수·5등 이상·낙첨 횟수를 참고 정보로 표시
- 점수·비용·후보풀 백분위가 미래 당첨확률이 아님을 명확히 구분

DEVELOPER
- Name: 이환홍
- Email: hwanhong57@gmail.com
- Windows Version: 9.10.1
- Mobile Version: 9.10.1 (Build 10101)

NEW IN WINDOWS V9.9.0
- Calculate the exact first-to-third-prize union coverage of each generated batch for up to 100 lines
- Compare overlap-aware coverage efficiency with the same-count distinct-random baseline
- Show educational target line counts and simple 1,000-won-per-line conversions without presenting them as purchase advice
- Organize score explanations, model validation, actual-winner score distributions, and number creation into distinct views
- Connect historical winning-number rank distributions to generation with the same candidate count and historical middle-50-percent rank band
- Preserve all 11 automatic generation methods, manual entry, conditions, explanations, local saving, QR import, backup, and exhaustive research
- See docs/UI_GUIDE_WINDOWS_9.8.7.md in the private source repository for the feature map and old-to-new locations

NEW IN WINDOWS V9.8.6
- Run a leakage-free sequential audit from draw 1001 through the latest draw with 1,200, 10,000, or 100,000 comparison items per draw; the largest run scores the actual winner against 99,999 uniform controls
- Compare observed winning-number score and rank distributions with uniform-control expectations, trends, capture rates, and CSV details
- Generate up to 30 lines from the top N, the historical middle 50 percent, or a custom start-to-end rank band in a selected candidate pool
- Spread selections across wide rank bands and show every generated line's actual sampled-pool rank
- Separate screen roles: understand scores in Analysis, validate past performance and winning-number positions in Historical Validation, and create lines in Number Generation
- State clearly that score and sampled-pool rank describe historical/theoretical fit, not future winning probability

NEW IN V9.8.3
- Refresh Windows, Android, and iOS with rounded cards, pill navigation, and a soft pastel palette
- Clarify the primary flows for analysis, number generation, historical validation, and local number/QR management
- Improve responsive layouts, focus visibility, and readability on small screens and with larger text

NEW IN V9.8.2
- Score 1,200 valid proposals and admit only the top 20 percent before diverse batch selection
- Show each selected line's candidate-pool rank and percentile together with its score and complementary cost
- Keep structure, period flow, recent flow, nine structural checks, four flow checks, and historical comparison inside an expandable rationale
- Label all descriptive scores separately from theoretical future winning odds

NEW IN V9.8.1
- Explain why each score-prioritized line was selected instead of showing only a total score
- Show the actual values and qualitative fit for nine structural criteria: sum, odd/even, number/color bands, consecutive numbers, endings, AC, primes, multiples of three, and span
- Show the four supporting flow checks for multi-period main numbers, bonus numbers, current absence gaps, and recent band transitions
- Record the generation conditions and distinguish score-driven selection from a reference-only evaluation of manual, QR, or other generated numbers
- Keep private weights and formulas out of the public interface while stating that the score is historical fit, not a future winning probability

NEW IN V9.8.0
- Add an overall historical data-fit score with concise combination-structure, period-flow, and recent-flow summaries
- Make score-prioritized generation the default while keeping every valid combination selectable and reducing overlap across generated lines
- Show the score and descriptive grade without presenting historical fit as a prediction or a higher future winning probability
- Give each main screen a clear purpose and keep longer explanations collapsed until the user opens them

NEW IN V9.7.0
- Compare number frequencies and five number bands with the exact uniform-draw expectation and descriptive z deviations
- Separate the custom 1-9/10-19/20-29/30-39/40-45 number bands from the official Lotto ball-color ranges
- Show exact structural distributions, observed-versus-theoretical band patterns, streaks, half-period changes, and vector transitions
- Evaluate sum, odd/even, band pattern, adjacent pairs, endings, AC, primes, multiples of three, and span with a descriptive structural-commonness index
- Exhaustively group all 8,145,060 combinations across nine structural fields and make the 70 combinations in the unique modal joint structure the default generation pool on PC, Android, and iOS
- Clearly preserve equal 1-in-8,145,060 first-prize odds for every fixed six-number combination; the structural score is descriptive, not predictive
- Allow an optional exact number-band vector such as 1-2-1-1-1, with impossible fixed/excluded settings rejected before generation
- Add exact-theory band generation, exploratory recent-band weighting, and a fixed 3-month/6-month/1-year/2-year/all-history blend
- Add optional band constraints for minimum occupied bands, maximum numbers per band, minimum 40s, and maximum single-digit numbers
- Add collapsed per-draw vectors, top vector transitions, linear band trends, and fair geometric waiting-time references to Analysis
- Add leakage-free auxiliary band checks to walk-forward validation: expected-vector L1 distance, occupied-band-count accuracy, and categorical-vector Brier score

NEW IN V9.6.2
- Organize the PC, Android, and iOS experience around Analysis, Number Generation, Validation & Simulation, and My Numbers & QR
- Keep n+1 model validation in the primary flow while placing uniformity, bulk-candidate, and exhaustive historical research under optional advanced details
- Distinguish model-validation ranking, historical candidate ranking, and best hypothetical historical prize tier (1st-5th/no prize); none is a future winning-probability ranking or proof of purchase
- Connect generated, manually selected, and QR-imported combinations to local My Numbers and target/latest/recent/all-draw comparisons

NEW IN V9.6.1
- Score each model's 45 next-draw number probabilities directly with Brier score and log loss, without candidate-sampling noise
- Keep model validation independent of candidate count and random seed; candidate-match experiments remain optional advanced research
- Use a conservative model gate: at least 260 evaluation draws, Bonferroni-adjusted Brier improvement, lower log loss, and no recent 104-draw degradation
- Fall back automatically to the equal-probability model when no non-uniform model passes every validation condition
- Generate five lines from the validated rule and pass them into the existing local save and target-draw comparison flow
- Default to full-history validation, show periods as months/years, and keep detailed research text collapsed
- Align the desktop and mobile product-weight probability model while keeping equal-probability random generation as the default

NEW IN V9.6
- Explicit no-win count, rate, last historical win, and longest no-win streak
- Exact theoretical Lotto 6/45 odds and per-number distribution diagnostics
- Seeded 1,000 / 10,000 / 100,000-candidate bulk simulation
- Memory-bounded exhaustive historical analysis of all 8,145,060 combinations
- Separate views for my-number history, external batch uniformity diagnostics, historical-fit bulk comparison, and n+1 model validation
- Leakage-free n+1 walk-forward comparison against a uniform baseline with paired 95% intervals
- External batch checks show concentration, duplicates, coverage, and overlap without presenting them as future prediction scores
- Clear result verdicts: no detected advantage, exploratory improvement, or below uniform
- Save generated or manually selected numbers in a separate local user.sqlite database
- Import 1~5 games from an official Lotto 6/45 QR by camera, PNG/JPEG image, or URL
- Compare saved numbers with their target draw, the latest draw, and recent/all historical draws
- Show best hypothetical rank, rank counts, no-win count, and no-win rate for every saved game

FROM V9.3
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

RUN
1. Keep LottoAnalyzer.exe, NOTICE.txt, README.txt, SHA256SUMS.txt, and the integrity-check files together.
2. Optionally run verify_program_integrity.bat before first use.
3. Double-click LottoAnalyzer.exe.

FIRST RUN
The seed DB embedded in the EXE is copied to:
  %LOCALAPPDATA%\LottoAnalyzer\lotto.sqlite
All future weekly updates and backups use the user-data copy.

SAVED NUMBERS
Saved numbers are kept separately in:
  %LOCALAPPDATA%\LottoAnalyzer\user.sqlite
They remain after replacing the EXE. Target/latest/history results are hypothetical
comparisons against published winning numbers, not proof of purchase or prize receipt.
QR images and original QR text are used only for local parsing and are not retained;
only the validated draw number and six-number games are saved when the user confirms.

DISTRIBUTION
The public package is intentionally minimal: LottoAnalyzer.exe, README.txt,
NOTICE.txt, SHA256SUMS.txt, and the two verify_program_integrity scripts. Python and
a separate _internal folder are not required. Run verify_program_integrity.bat to
check every listed file before first launch.
For stronger trust, sign the EXE with your own Windows code-signing certificate.
The private signing key is not included.

MOBILE
The Windows EXE is not an Android APK. Android and iOS builds are produced from
the shared private Flutter source. Install Android builds only from an official
Google Play testing or production track; iOS publishing uses the prepared Xcode
archive on macOS and App Store Connect.

MOBILE PRIVACY AND DATA SOURCES
- Privacy policy: PRIVACY.md in the public repository
- External winning-draw data source notice: THIRD_PARTY_NOTICES.md in the public repository
