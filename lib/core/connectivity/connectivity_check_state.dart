part of 'connectivity_check_bloc.dart';

@freezed
class ConnectivityCheckState with _$ConnectivityCheckState {
  const factory ConnectivityCheckState.loadingConnectivityCheckState() =
      LoadingConnectivityCheckState;
  const factory ConnectivityCheckState.connectedState() =
      ConnectedConnectivityCheckState;
  const factory ConnectivityCheckState.notConnectedState() =
      NotConnectedConnectivityCheckState;
}
