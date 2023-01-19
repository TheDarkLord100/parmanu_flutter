import 'package:serial_port_win32/serial_port_win32.dart';
import 'package:flutter/material.dart';

class Serial {
  List data = List.filled(9, 0);

  void getPorts() {
    final ports = SerialPort.getAvailablePorts();
    debugPrint(ports.toString());
  }

  Future<void> getData() async {
    try {
      final port = SerialPort('COM3', openNow: false);
      port.openWithSettings(BaudRate: 9600);
      debugPrint(port.isOpened.toString());
      int i = 0;
      String singleValue = "";
      port.readOnListenFunction = (value) {
        String stringData = String.fromCharCodes(value);
        if (stringData == ',') {
          data[i++] = int.parse(singleValue);
          singleValue = "";
        } else {
          singleValue = singleValue + stringData;
        }
        if (i == 9) {
          i = 0;
        }
      };
    } on Exception catch (err) {
      debugPrint(err.toString());
    }
  }
}
