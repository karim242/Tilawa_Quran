import 'package:dartz/dartz.dart';
import 'package:tilawa_quran/error/failure.dart';
import 'package:tilawa_quran/quran/domain/entites/surah_details.dart';
import 'package:tilawa_quran/quran/domain/entites/surah_recitation.dart';

abstract class BaseQuranRepository {
  Future<List<SurahDetails>> getSurahDetails();
  Future<Either<Failure,SurahRecitation>> getSurahRecitation(
      int recitationID, int surahId);
  Future<List<Map<String, dynamic>>> getAzkarAndDoa(String category);
}
