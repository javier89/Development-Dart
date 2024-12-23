void main() {
  DateTime fecha = DateTime(2024, 10, 1);

  List<String> dayOfWeek = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  int daysOfWeek = fecha.weekday;
  print('The 13 October of 2024 is a ${dayOfWeek[daysOfWeek - 1]}');
}
