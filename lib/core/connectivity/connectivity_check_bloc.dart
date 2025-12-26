import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'connectivity_check_bloc.freezed.dart';
part 'connectivity_check_event.dart';
part 'connectivity_check_state.dart';

@injectable
class ConnectivityCheckBloc
    extends Bloc<ConnectivityCheckEvent, ConnectivityCheckState> {
  ConnectivityCheckBloc() : super(const LoadingConnectivityCheckState()) {
    _connectivity.onConnectivityChanged.listen((connectivityResult) {
      add(_UpdateConnectivity(connectivityResult));
    });
    on<_UpdateConnectivity>((event, emit) {
      if (event.connectivityResult.contains(ConnectivityResult.wifi) ||
          event.connectivityResult.contains(ConnectivityResult.mobile)) {
        emit(const ConnectivityCheckState.connectedState());
      } else {
        emit(const ConnectivityCheckState.notConnectedState());
      }
    });

    on<_CheckConnectivity>((event, emit) async {
      emit(const ConnectivityCheckState.loadingConnectivityCheckState());
      final connectivityResult = await _connectivity.checkConnectivity();
      if (connectivityResult.contains(ConnectivityResult.wifi) ||
          connectivityResult.contains(ConnectivityResult.mobile)) {
        emit(const ConnectivityCheckState.connectedState());
      } else {
        emit(const ConnectivityCheckState.notConnectedState());
      }
    });
  }
  late final Connectivity _connectivity = Connectivity();
}
// if (connectivityResult.contains(ConnectivityResult.mobile)) {
//   // Mobile network available.
// } else if (connectivityResult.contains(ConnectivityResult.wifi)) {
//   // Wi-fi is available.
//   // Note for Android:
//   // When both mobile and Wi-Fi are turned on system will return Wi-Fi only as active network type
// } else if (connectivityResult.contains(ConnectivityResult.ethernet)) {
//   // Ethernet connection available.
// } else if (connectivityResult.contains(ConnectivityResult.vpn)) {
//   // Vpn connection active.
//   // Note for iOS and macOS:
//   // There is no separate network interface type for [vpn].
//   // It returns [other] on any device (also simulator)
// } else if (connectivityResult.contains(ConnectivityResult.bluetooth)) {
//   // Bluetooth connection available.
// } else if (connectivityResult.contains(ConnectivityResult.other)) {
//   // Connected to a network which is not in the above mentioned networks.
// } else if (connectivityResult.contains(ConnectivityResult.none)) {
//   // No available network types
// 
