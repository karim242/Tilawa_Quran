import 'package:tilawa_quran/quran/domain/entites/surah_recitation.dart';
import 'package:tilawa_quran/quran/domain/repository/base_repository.dart';

class GetSurahRecitationCase {
  final BaseQuranRepository repository;

  GetSurahRecitationCase(this.repository);
  Future<List<SurahRecitation>> execute(int recitationID, int surahId) {
    return repository.getSurahRecitation(recitationID, surahId);
  }
}
