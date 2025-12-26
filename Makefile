.PHONY: patch_index gen build_web_dev build_web_prod build_apk_dev_debug build_apk_prod_debug build_apk_dev build_apk_prod build_and_update

ENV ?= dev

gen:
	fvm dart run build_runner build --delete-conflicting-outputs

patch_index:
	./patch_index.sh $(ENV)

build_web_dev:
	fvm flutter build web -t lib/main/main_dev.dart --dart-define-from-file=.env/appDev.json --release -o deploy/dev

build_web_prod:
	fvm flutter build web -t lib/main/main_prod.dart --dart-define-from-file=.env/appProd.json --release -o deploy/prod

build_apk_dev_debug:
	fvm flutter build apk -t lib/main/main_dev.dart --flavor appDev --dart-define-from-file=.env/appDev.json --debug

build_apk_prod_debug:
	fvm flutter build apk -t lib/main/main_prod.dart --flavor appProd --dart-define-from-file=.env/appProd.json --debug

build_apk_dev:
	fvm flutter build apk -t lib/main/main_dev.dart --flavor appDev --dart-define-from-file=.env/appDev.json --release

build_apk_prod:
	fvm flutter build apk -t lib/main/main_prod.dart --flavor appProd --dart-define-from-file=.env/appProd.json --release

build_and_update: clean get gen build_web_dev patch_index

build_and_update_prod: build_web_prod 

build_all: build_and_update build_and_update_prod patch_index

clean:
	fvm flutter clean

get:
	fvm flutter pub get