import 'package:ciitec2021/presentation/bloc/event/attendee_list_event.dart';
import 'package:ciitec2021/presentation/bloc/attendee_list_bloc.dart';
import 'package:ciitec2021/presentation/di/di_module.dart';
import 'package:ciitec2021/presentation/screen/size_config.dart';
import 'package:flutter/material.dart';

class AttendeeListScreen extends StatefulWidget {
  @override
  _AttendeeListScreenState createState() => _AttendeeListScreenState();
}

class _AttendeeListScreenState extends State<AttendeeListScreen> {
  AttendeeListBloc _attendeeListBloc;

  @override
  void initState() {
    _attendeeListBloc = builder<AttendeeListBloc>();
    _attendeeListBloc.add(AttendeeListInitEvent());
    super.initState();
  }

  @override
  void dispose() {
    _attendeeListBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Container(
      child: Align(
        child: Text("Bienvenido CIITEC 2021"),
      ),
    ));
  }
}
