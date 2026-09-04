육사오 데이터랩 공개 배포 및 고객지원

MOBILE APP 9.8.1
- Google Play 표시 이름: 육사오 데이터랩
- Android 패키지 이름: com.hwanhonglee.lottoanalyzer
- 개인정보처리방침: 공개 저장소의 PRIVACY.md
- 외부 당첨 데이터 출처: 공개 저장소의 THIRD_PARTY_NOTICES.md
- 고객지원: hwanhong57@gmail.com

이 공개 저장소는 모바일 앱의 개인정보처리방침·제3자 데이터 고지와 Windows용
완성 제품을 제공합니다. Flutter 모바일 소스는 비공개 LottoAnalyzer-Source
저장소에서 별도로 관리합니다.

MOBILE 9.8.1 UPDATE
- 전체 데이터 점수로 선택한 각 조합에 선정 근거를 추가
- 합계·홀짝·번호대·연속수·끝수·AC·소수·3의 배수·번호 폭의 실제값과 적합도를 표시
- 장·단기 본번호, 보너스, 미출현 간격, 최근 번호대 전이의 판단 자료를 표시
- 실제 생성 조건과 선정 당시 참고 기간을 기록하고, 수동·QR 번호의 사후 평가와 구분
- 점수가 백분위나 미래 당첨확률이 아니며 모든 고정 조합의 1등 이론 확률은 같음을 명확히 표시

DEVELOPER
- Name: 이환홍
- Email: hwanhong57@gmail.com
- Version: 9.8.1

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
