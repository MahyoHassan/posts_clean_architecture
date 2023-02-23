
import 'package:dartz/dartz.dart';
import 'package:posts_clean_architecture/features/posts/domain/entities/post.dart';

import '../../../../global/error/failures.dart';
import '../repositries/posts_repositry.dart';

class GetAllPostsUsecase {
  final PostsRepositry repository;

  GetAllPostsUsecase(this.repository);

  Future<Either<Failure, List<PostEntity>>> call() async {
    return await repository.getAllPosts();
  }
}