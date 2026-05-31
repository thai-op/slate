.PHONY: build test release

PROJECT := Slate.xcodeproj
SCHEME := Slate
DERIVED_DATA := build/DerivedData
XCODEBUILD ?= xcodebuild
RUBY ?= ruby
RELEASE_SCRIPT := script/slate.rb

build:
	$(XCODEBUILD) -project $(PROJECT) -scheme $(SCHEME) -configuration Debug -derivedDataPath $(DERIVED_DATA) build

test:
	$(XCODEBUILD) -project $(PROJECT) -scheme $(SCHEME) -configuration Debug -derivedDataPath $(DERIVED_DATA) test

release:
	$(RUBY) $(RELEASE_SCRIPT) gen
