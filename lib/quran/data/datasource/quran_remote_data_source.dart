import 'package:tilawa_quran/core/dio_helper.dart';
import 'package:tilawa_quran/error/error_message_model.dart';
import 'package:tilawa_quran/error/exception.dart';
import 'package:tilawa_quran/quran/data/model/surah_recitation_model.dart';

abstract class BaseRemoteQuranDataSource {
   Future<SurahRecitationModel> getSurahRecitation(int recitationID,int surahId);
  
}

class RemoteQuranDataSource implements BaseRemoteQuranDataSource {
  @override
  Future<SurahRecitationModel> getSurahRecitation(
      int recitationID, int surahId) async {
    final response = await DioHelper.getData(
        url:
            'https://api.quran.com/api/v4/chapter_recitations$recitationID/$surahId');
    if (response?.statusCode == 200) {
      return SurahRecitationModel.fromJson(response?.data);
    } else {
      throw ServerException(ErrorMessageModel.fromJson(response?.data));
    }
  }
}
