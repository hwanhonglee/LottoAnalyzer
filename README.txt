DEVELOPER
- Name: 이환홍
- Email: hwanhong57@gmail.com
- Version: 9.3.0

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

BUILD
1. Extract to a new folder.
2. Copy your existing lotto.sqlite into this builder folder.
3. Double-click build_program.bat.
4. Run dist\LottoAnalyzer\LottoAnalyzer.exe.

FIRST RUN
The seed DB beside the EXE is copied to:
  %%LOCALAPPDATA%%\LottoAnalyzer\lotto.sqlite
All future weekly updates and backups use the user-data copy.

DISTRIBUTION
You may zip the entire dist\LottoAnalyzer folder. For stronger trust, sign the EXE/installer with your own Windows code-signing certificate. The private signing key is not included.

MOBILE
See MOBILE_APP_PLAN.md. This package is not an Android APK; a genuine mobile app requires a separate Flutter build and Android signing.
