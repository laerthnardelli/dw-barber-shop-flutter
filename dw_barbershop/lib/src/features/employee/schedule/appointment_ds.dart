import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../core/ui/constants.dart';

class AppointmentDs extends CalendarDataSource {
  @override
  List<dynamic>? get appointments => [
        Appointment(
          startTime: DateTime.now(),
          endTime: DateTime.now().add(
            const Duration(hours: 1),
          ),
          subject: 'Laérth Knodt Nardelli',
          color: ColorsConstants.brown,
        ),
        Appointment(
          startTime: DateTime.now().add(
            const Duration(hours: 2),
          ),
          endTime: DateTime.now().add(
            const Duration(hours: 3),
          ),
          subject: 'Eliz',
          color: ColorsConstants.brown,
        ),
      ];
}
