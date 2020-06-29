import 'package:equatable/equatable.dart';

abstract class VideoEvent extends Equatable {

  const VideoEvent();

  @override

  List<Object> get props => [];

}

class ShowVideoEvent extends VideoEvent {

  final path;

  const ShowVideoEvent({this.path});

  @override
  List<Object> get props => [
    path
  ];

}
