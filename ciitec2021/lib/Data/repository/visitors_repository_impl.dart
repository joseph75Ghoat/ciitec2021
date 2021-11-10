import 'package:ciitec2021/Data/datasource/attendee_local_data_source.dart';
import 'package:ciitec2021/Data/datasource/attendee_remote_data_source.dart';
import 'package:ciitec2021/Data/model/visitor_model.dart';
import 'package:ciitec2021/Data/model/attendee_response.dart';
import 'package:ciitec2021/Domain/entity/Visitor.dart';
import 'package:ciitec2021/Domain/repository/visitors_repository.dart';
import 'package:ciitec2021/core/network_connectivity.dart';
import 'package:ciitec2021/error/failure.dart';
import 'package:ciitec2021/presentation/utils/date_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

const DATA_ONCE_STALE_IN_MIN = 10;

class AttendeeRepositoryImpl implements AttendeeRepository {
  final AttendeeRemoteDataSource attendeeRemoteDataSource;
  final AttendeeLocalDataSource attendeeLocalDataSource;
  final SharedPreferences sharedPreferences;
  final NetworkConnectivity networkConnectivity;

  AttendeeRepositoryImpl(
      {@required this.attendeeRemoteDataSource,
      @required this.attendeeLocalDataSource,
      @required this.sharedPreferences,
      @required this.networkConnectivity});

  @override
  Future<Either<Failure, List<Atendee>>> fetchAttendeeList() async {
    return null;
  }

  @override
  bool isDataStale() {
    return false;
  }
}
