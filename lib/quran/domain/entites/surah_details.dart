import 'package:equatable/equatable.dart';

class SurahDetails extends Equatable {
  final int id, totalVerses;
  final String name, transliteration, type;
final List<String> image;
  const SurahDetails(
      {required this.id,
      required this.name,
      required this.transliteration,
      required this.totalVerses,
      required this.type,
      required this.image
      });

  @override
  List<Object?> get props => [
        id,
        name,
        transliteration,
        totalVerses,
      ];
}
