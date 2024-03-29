import 'package:tilawa_quran/quran/domain/entites/surah_details.dart';
import 'package:tilawa_quran/quran/domain/repository/base_repository.dart';

class GetSurahDetailsCase{
  final BaseQuranRepository  repository;

  GetSurahDetailsCase(this.repository);
  Future<List<SurahDetails>>execute(){
    return repository.getSurahDetails();
  }
}