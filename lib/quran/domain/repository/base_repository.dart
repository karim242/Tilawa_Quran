import 'package:tilawa_quran/quran/domain/entites/azkar_doa.dart';
import 'package:tilawa_quran/quran/domain/entites/search_ayat.dart';
import 'package:tilawa_quran/quran/domain/entites/surah_details.dart';
import 'package:tilawa_quran/quran/domain/entites/surah_recitation.dart';

abstract class BaseQuranRepository {
  Future<List<SurahDetails>> getSurahDetails();
  Future<List<SurahRecitation>> getSurahRecitation(
      int recitationID, int surahId);
  Future<List<AzkarAndDoa>> getAzkarAndDoa(String category);
  Future<List<SearchAyat>> searchAya(String  category);
}
