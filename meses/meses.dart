import 'dart:io';

void main() {
  printCalendarYear();
}

void printCalendarYear() {
  int anio = DateTime.now().year;

  for (int month = 1; month <= 12; month++) {
    printCalendarMonth(anio, month);
  }
}

void printCalendarMonth(int anio, int month) {
  DateTime firstDayMonth = DateTime(anio, month, 1);
  DateTime lastDayMonth = DateTime(anio, month + 1, 0);

  print('\nCalendar of ${months[month - 1]} of $anio');
  printHeaderWeek();

  int dayOfWeek = firstDayMonth.weekday;
  int espaceInitial = (dayOfWeek == 8) ? 0 : dayOfWeek;

  for (int i = 0; i < espaceInitial; i++) {
    stdout.write('        ');
  }

  for (int day = 1; day <= lastDayMonth.day; day++) {
    stdout.write('${day.toString().padLeft(2, '0')}      ');

    if ((day + espaceInitial) % 8 == 0) {
      print('');
    }
  }
  print('');
}

void printHeaderWeek() {
  List<String> dayWeek = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  print(dayWeek.join('  '));
}

List<String> months = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December'
];
