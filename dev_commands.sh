# Format all the files
dart format .
# Fix dart language warnings which can be automatically fixed
dart fix --apply
# Run if the build runner command fails
flutter packages pub get
# Generates freezed files
flutter pub run build_runner build --delete-conflicting-outputs
