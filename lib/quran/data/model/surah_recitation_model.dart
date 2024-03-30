import 'package:tilawa_quran/quran/domain/entites/surah_recitation.dart';

class SurahRecitationModel extends SurahRecitation {
  SurahRecitationModel({required super.surahAudio});

   factory SurahRecitationModel.fromJson(Map<String,dynamic> json){
    return SurahRecitationModel(surahAudio: json['audio_url']);
  }
}
