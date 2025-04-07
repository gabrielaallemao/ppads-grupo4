import '../database.dart';

class CalculoDispositivosTable extends SupabaseTable<CalculoDispositivosRow> {
  @override
  String get tableName => 'calculo-dispositivos';

  @override
  CalculoDispositivosRow createRow(Map<String, dynamic> data) =>
      CalculoDispositivosRow(data);
}

class CalculoDispositivosRow extends SupabaseDataRow {
  CalculoDispositivosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CalculoDispositivosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  int? get quantidade => getField<int>('quantidade');
  set quantidade(int? value) => setField<int>('quantidade', value);

  int? get watts => getField<int>('watts');
  set watts(int? value) => setField<int>('watts', value);

  double? get horas => getField<double>('horas');
  set horas(double? value) => setField<double>('horas', value);

  int? get dias => getField<int>('dias');
  set dias(int? value) => setField<int>('dias', value);

  String? get localizacao => getField<String>('localizacao');
  set localizacao(String? value) => setField<String>('localizacao', value);

  double? get btus => getField<double>('btus');
  set btus(double? value) => setField<double>('btus', value);
}
