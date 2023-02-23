import 'package:dartz/dartz.dart';
import 'package:posts_clean_architecture/features/posts/domain/entities/post.dart';

import '../../../../global/error/failures.dart';

abstract class PostsRepositry {
  Future<Either<Failure, List<PostEntity>>> getAllPosts();
  Future<Either<Failure, Unit>> deletePost(int id);
  Future<Either<Failure, Unit>> updatePost(PostEntity post);
  Future<Either<Failure, Unit>> addPost(PostEntity post);
}
