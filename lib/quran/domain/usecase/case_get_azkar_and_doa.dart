import 'package:tilawa_quran/quran/domain/entites/azkar_doa.dart';
import 'package:tilawa_quran/quran/domain/repository/base_quran_repository.dart';

class GetAzkarAndDoaCase {
  final BaseQuranRepository repository;

  GetAzkarAndDoaCase(this.repository);
  Future<List< Map<String, dynamic>>> execute(String category) {
    return repository.getAzkarAndDoa(category);
  }
}
