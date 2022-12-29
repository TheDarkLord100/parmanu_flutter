class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final double y;
}

class ChartAxisData {
  final String label;
  final double maximum;
  final double minimum;
  final double interval;

  ChartAxisData(
      {required this.label,
      required this.maximum,
      required this.minimum,
      required this.interval});
}
