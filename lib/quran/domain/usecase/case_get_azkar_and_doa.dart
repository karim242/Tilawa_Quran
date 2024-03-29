import 'package:tilawa_quran/quran/domain/entites/azkar_doa.dart';
import 'package:tilawa_quran/quran/domain/repository/base_repository.dart';

class GetAzkarAndDoaCase {
  final BaseQuranRepository repository;

  GetAzkarAndDoaCase(this.repository);
  Future<List<AzkarAndDoa>> execute(String category) {
    return repository.getAzkarAndDoa(category);
  }
}
