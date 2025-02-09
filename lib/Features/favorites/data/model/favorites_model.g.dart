// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoritesBookModelAdapter extends TypeAdapter<FavoritesBookModel> {
  @override
  final int typeId = 0;

  @override
  FavoritesBookModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavoritesBookModel(
      id: fields[0] as String,
      title: fields[1] as String,
      authors: fields[2] as String,
      thumbnail: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, FavoritesBookModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.authors)
      ..writeByte(3)
      ..write(obj.thumbnail);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoritesBookModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
