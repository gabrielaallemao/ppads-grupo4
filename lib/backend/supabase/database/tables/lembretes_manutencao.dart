import '../database.dart';

class LembretesManutencaoTable extends SupabaseTable<LembretesManutencaoRow> {
  @override
  String get tableName => 'lembretes-manutencao';

  @override
  LembretesManutencaoRow createRow(Map<String, dynamic> data) =>
      LembretesManutencaoRow(data);
}

class LembretesManutencaoRow extends SupabaseDataRow {
  LembretesManutencaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LembretesManutencaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get dispositivo => getField<String>('dispositivo');
  set dispositivo(String? value) => setField<String>('dispositivo', value);

  String? get manutencao => getField<String>('manutencao');
  set manutencao(String? value) => setField<String>('manutencao', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  String? get local => getField<String>('local');
  set local(String? value) => setField<String>('local', value);

  bool? get concluido => getField<bool>('concluido');
  set concluido(bool? value) => setField<bool>('concluido', value);
}
