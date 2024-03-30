import 'package:tilawa_quran/core/utils/azkar_list.dart';
import 'package:tilawa_quran/core/utils/quran_details.dart';
import 'package:tilawa_quran/error/exception.dart';
import 'package:tilawa_quran/error/failure.dart';
import 'package:tilawa_quran/quran/data/datasource/quran_remote_data_source.dart';
import 'package:tilawa_quran/quran/domain/entites/surah_details.dart';
import 'package:tilawa_quran/quran/domain/entites/surah_recitation.dart';
import 'package:tilawa_quran/quran/domain/repository/base_quran_repository.dart';
import 'package:dartz/dartz.dart';

class ChaptersRepository extends BaseQuranRepository {
  final BaseRemoteQuranDataSource baseRemoteQuranDataSource;

  ChaptersRepository({required this.baseRemoteQuranDataSource});

  @override
  Future<List<Map<String, dynamic>>> getAzkarAndDoa(String category) async {
    return azkarAndDoaList;
  }

  @override
  Future<List<SurahDetails>> getSurahDetails() async {
    return quranDetails;
  }

  @override
  Future<Either<Failure, SurahRecitation>> getSurahRecitation(
      int recitationID, int surahId) async {
    final result = await baseRemoteQuranDataSource.getSurahRecitation(
        recitationID, surahId);
    try {
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.errorMessageModel.message));
    }
  }
}
