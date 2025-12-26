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
