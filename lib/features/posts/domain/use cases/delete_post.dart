
import 'package:dartz/dartz.dart';

import '../../../../global/error/failures.dart';
import '../repositries/posts_repositry.dart';

class DeletePostUsecase {
  final PostsRepositry repository;

  DeletePostUsecase(this.repository);

  Future<Either<Failure, Unit>> call(int postId) async {
    return await repository.deletePost(postId);
  }
}
