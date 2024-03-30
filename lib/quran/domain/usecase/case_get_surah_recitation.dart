import 'package:dartz/dartz.dart';
import 'package:tilawa_quran/error/failure.dart';
import 'package:tilawa_quran/quran/domain/entites/surah_recitation.dart';
import 'package:tilawa_quran/quran/domain/repository/base_quran_repository.dart';

class GetSurahRecitationCase {
  final BaseQuranRepository repository;

  GetSurahRecitationCase(this.repository);
 Future<Either<Failure,SurahRecitation>> execute(int recitationID, int surahId) {
    return repository.getSurahRecitation(recitationID, surahId);
  }
}
