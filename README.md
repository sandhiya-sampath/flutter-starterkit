# flutter_starter

This project is a starting point for a Flutter application.

To run app locally - default environment is dev
$flutter run 

for dev
 $flutter run --target="lib/main_dev.dart"

 for qa
 $flutter run --target="lib/main_qa.dart"

 for stage
 $flutter run  --target="lib/main_stage.dart"

 for prod
 $flutter run --target="lib/main_prod.dart"

To auto generate l10n file based on arb file changes run
&flutter gen-l10n