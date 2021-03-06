import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_stars_flutter/domain/entities/github_stars.dart';
import 'package:github_stars_flutter/domain/repositories/github_stars_repo.dart';
import 'package:github_stars_flutter/domain/usecases/get_all_github_stars_use_case.dart';
import 'package:mockito/mockito.dart';

class MockGithubStarsRepo extends Mock implements GithubStarsRepo {}

void main() {
  GetAllGithubStarsUseCase useCase;
  MockGithubStarsRepo mockRepo;

  setUp(() {
    mockRepo = MockGithubStarsRepo();
    useCase = GetAllGithubStarsUseCase(repo: mockRepo);
  });

  final testParam = GetAllGithubStarsUseCaseParams(
    page: 1,
  );
  final emptyList = List<GithubStars>();

  test(
    'Should show error if page equal 0 and search text length less than 3.',
    () async {
      // "On the fly" implementation of the Repository using the Mockito package.
      // When searchGithubStars is called with any argument, always answer with
      // the Right "side" of Either containing a test List<GithubStars> object.
      when(mockRepo.getListGithubStars(any))
          .thenAnswer((_) async => right(emptyList));

      // The "act" phase of the test. Call the not-yet-existent method.
      final result = await useCase(testParam);

      // UseCase should simply return whatever was returned from the Repository
      expect(result, right(emptyList));

      // Verify that the method has been called on the Repository
      verify(mockRepo.getListGithubStars(testParam.page));

      // Only the above method should be called and nothing more.
      verifyNoMoreInteractions(mockRepo);
    },
  );
}
