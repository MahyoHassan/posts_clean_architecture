import 'package:dartz/dartz.dart';
import 'package:posts_clean_architecture/features/posts/domain/entities/post.dart';
import '../../../../global/error/failures.dart';
import '../repositries/posts_repositry.dart';

class AddPostUsecase {
  final PostsRepositry repository;

  AddPostUsecase(this.repository);

  Future<Either<Failure, Unit>> call(PostEntity post) async {
    return await repository.addPost(post);
  }
}

