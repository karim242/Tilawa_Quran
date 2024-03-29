import 'package:tilawa_quran/quran/domain/entites/search_ayat.dart';
import 'package:tilawa_quran/quran/domain/repository/base_repository.dart';

lass GetSearchAyaCase {
  final BaseQuranRepository repository;

  GetSearchAyaCase(this.repository);
  Future<List<SearchAyat>> execute(
    String category,
  ) {
    return repository.searchAya(category);
  }
}
c