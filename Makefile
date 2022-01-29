SHELL := /bin/bash

.PHONY: \
	resolve \
	update \
	generated \
	generated_watch \
	regen_l10n \
	dependency_validator \
	analyze \
	test \
	test_local \
	generate_icons \

resolve:
	@fvm flutter pub get

upgrade:
	@fvm flutter pub upgrade

generated:
	@fvm flutter packages pub run build_runner build --delete-conflicting-outputs

generated_watch:
	@fvm flutter packages pub run build_runner watch --delete-conflicting-outputs

regen_l10n:
	@rm -rf .dart_tool/flutter_gen/gen_l10n
	@fvm flutter gen-l10n

dependency_validator:
	@fvm flutter pub run dependency_validator

analyze:
	@fvm flutter analyze
