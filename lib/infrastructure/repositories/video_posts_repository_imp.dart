import 'package:toktik/domain/datasource/video_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';


class VideoPostsRepositoryImp implements VideoPostsRepository {

  final VideoPostsDatasource videosDatasource;

  VideoPostsRepositoryImp({
    required this.videosDatasource
  });

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendyVideosbyPage(int page) async{
    return await videosDatasource.getTrendyVideosbyPage(page);
  }

}