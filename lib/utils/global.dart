import 'package:intl/intl.dart';

class Globals {
  static int pacienteId = 0;
  static String diaSelecionado =
      DateFormat('dd/MM/yyyy').format(DateTime.now()).toString();
  static bool isEditing = false;
}
