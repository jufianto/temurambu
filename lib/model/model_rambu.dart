import 'package:equatable/equatable.dart';

class RambuModel extends Equatable {
  final String id;
  final String namaRambu;
  final String namaJalan;
  final String langtitude;
  final String longtitude;

  RambuModel({
    required this.id,
    this.namaRambu = '',
    this.namaJalan = '',
    this.longtitude = '',
    this.langtitude = '',
  });

  RambuModel.fromJson(Map<String, dynamic> json)
      : id = json['uid'],
        namaRambu = json['nama_rambu'],
        namaJalan = json['alamat_rambu'],
        longtitude = json['latitude'],
        langtitude = json['longitude'];

  // Map<String, dynamic> toJson() => {
  //       'id': id,
  //       'namaRambu': namaRambu,
  //       'namaJalan': namaJalan,
  //       'longtitude': longtitude,
  //       'langtitude': langtitude,
  //     };

  @override
  // TODO: implement props
  List<Object?> get props => [id, namaRambu, namaJalan, longtitude, langtitude];
}
