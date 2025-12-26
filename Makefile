
gen:
	fvm dart run build_runner build --delete-conflicting-outputs

clean:
	fvm flutter clean

get:
	fvm flutter pub get