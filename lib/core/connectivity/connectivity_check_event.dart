part of 'connectivity_check_bloc.dart';

@freezed
class ConnectivityCheckEvent with _$ConnectivityCheckEvent {
  const factory ConnectivityCheckEvent.updateConnectivity(
      List<ConnectivityResult> connectivityResult) = _UpdateConnectivity;
  const factory ConnectivityCheckEvent.checkConnectivity() = _CheckConnectivity;
}
