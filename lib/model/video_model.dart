///    This program is free software: you can redistribute it and/or modify
///    it under the terms of the GNU General Public License as published by
///    the Free Software Foundation, either version 3 of the License, or
///    (at your option) any later version.
///
///    This program is distributed in the hope that it will be useful,
///    but WITHOUT ANY WARRANTY; without even the implied warranty of
///    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
///    GNU General Public License for more details.
///
///    You should have received a copy of the GNU General Public License
///    along with this program.  If not, see <https://www.gnu.org/licenses/>.

import 'package:json_annotation/json_annotation.dart';
import 'package:covid19mobile/model/base_post_model.dart';

part 'video_model.g.dart';

/// Stats Model
@JsonSerializable(includeIfNull: false)
class VideoModel extends BasePostModel {
  /// Recovered total cases
  @JsonKey(name: 'post_title')
  final String postTitle;

  /// Confirmed total cases
  @JsonKey(name: 'video')
  final String video;

  /// Suspected total cases
  @JsonKey(name: 'descricao')
  final String description;

  String getVideoUrl() {
    var regex = RegExp(r'(?<=src=").*?(?=[?"])');
    var videoUrl = regex.firstMatch(video)?.group(0);
    return videoUrl?.replaceAll("\\", "");
  }

  String getVideoId() {
    var videoUrl = getVideoUrl();
    Uri uri = Uri.parse(videoUrl);
    return uri.pathSegments.last;
  }

  String getVideoThumbnail() {
    return "https://img.youtube.com/vi/${getVideoId()}/hqdefault.jpg";
  }

  /// Model constructor
  ///
  /// All properties are mandatory
  ///
  VideoModel({
    int id,
    String author,
    String date,
    String postDateGmt,
    String postExcerpt,
    String postStatus,
    String commentStatus,
    String pingStatus,
    String postPassword,
    String postName,
    String toPing,
    String pinged,
    String postModified,
    String postModifiedGMT,
    String postContentFiltered,
    int postParent,
    String guid,
    int menuOrder,
    String postType,
    String postMimeType,
    String commentCount,
    String filter,
    this.postTitle,
    this.video,
    this.description,
  }) : super(
          id: id,
          author: author,
          date: date,
          postDateGmt: postDateGmt,
          postExcerpt: postExcerpt,
          postStatus: postStatus,
          commentStatus: commentStatus,
          pingStatus: pingStatus,
          postPassword: postPassword,
          postName: postName,
          toPing: toPing,
          pinged: pinged,
          postModified: postModified,
          postModifiedGMT: postModifiedGMT,
          postContentFiltered: postContentFiltered,
          postParent: postParent,
          guid: guid,
          menuOrder: menuOrder,
          postType: postType,
          postMimeType: postMimeType,
          commentCount: commentCount,
          filter: filter,
        );

  /// Mapper from Json to Model
  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);

  /// Maps Model to Json
  Map<String, dynamic> toJson() => _$VideoModelToJson(this);
}
