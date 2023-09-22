xcodebuild -project AppleLocalization/AppleLocalization.xcodeproj \
   -scheme AppleLocalization \
   -derivedDataPath ./DerivedData \
   -sdk iphoneos build-for-testing

(cd ./DerivedData/Build/Products/ && \
  zip -r MyTests.zip Debug-iphoneos AppleLocalization_AppleLocalization_iphoneos16.4-arm64.xctestrun)
