import './index.dart';

// module class, one module can contain several indexes
class CModule {
  final String Module_Code;
  final String Module_Name;

  final List<CIndex> indexes;

  CModule(this.Module_Code, this.Module_Name, this.indexes);
}
