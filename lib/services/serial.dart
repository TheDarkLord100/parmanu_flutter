import 'package:serial_port_win32/serial_port_win32.dart';
import 'package:flutter/material.dart';

import 'chart.dart';

class Serial {
  List data = List.filled(9, 0);
  final port = SerialPort('COM5', openNow: false);
  final List<ChartData> chartData = [];

  void getPorts() {
    final ports = SerialPort.getAvailablePorts();
    debugPrint(ports.toString());
  }

  void openPort() {
    port.openWithSettings(BaudRate: 9600);
    debugPrint(port.isOpened.toString());
  }

  void closePort() {
    port.close();
    debugPrint(port.isOpened.toString());
  }

  Future<void> getData() async {
    try {
      int time = 0;
      String singleValue = "";
      port.readOnListenFunction = (value) {
        String stringData = String.fromCharCodes(value);
        if (stringData == ',') {
          int value = int.parse(singleValue);
          singleValue = "";
          chartData.add(ChartData(time, value * 1.0));
        } else {
          singleValue = singleValue + stringData;
        }
        time++;
      };
    } on Exception catch (err) {
      debugPrint(err.toString());
    }
  }
}
