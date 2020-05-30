import 'package:flutter_test/flutter_test.dart';
import 'package:github_stars_flutter/core/failure.dart';
import 'package:github_stars_flutter/data/models/github_stars_api_model.dart';
import 'package:github_stars_flutter/data/repositories/github_stars_repo_data.dart';
import 'package:github_stars_flutter/data/source/github_stars_network_source.dart';
import 'package:github_stars_flutter/domain/entities/github_stars.dart';
import 'package:mockito/mockito.dart';

class MockNetworkSource extends Mock implements GithubStarsNetworkSource {}

void main() {
  GithubStarsRepoData repo;
  MockNetworkSource mockNetworkSource;

  setUp(() {
    mockNetworkSource = MockNetworkSource();
    repo = GithubStarsRepoData(
      githubStarsNetworkSource: mockNetworkSource,
    );
  });

  final emptyList = List<GithubStars>();
  final emptyResult = GithubStarsApiModel(
    incompleteResults: true,
    items: List<Items>(),
    totalCount: 1,
  );

  test(
    'Should get list github stars data.',
    () async {
      const page = 1;
      final expectedResult = emptyList;

      when(mockNetworkSource.getGithubStarsApi(page))
          .thenAnswer((_) async => emptyResult);

      final eitherResult = await repo.getListGithubStars(page);

      eitherResult.fold(
        (failure) => null,
        (realResult) => expect(realResult, expectedResult),
      );

      verify(mockNetworkSource.getGithubStarsApi(page));

      verifyNoMoreInteractions(mockNetworkSource);
    },
  );

  test(
    'Should not get list github stars data.',
    () async {
      const page = 0;
      final expectedResult = isA<DefaultFailure>();

      when(mockNetworkSource.getGithubStarsApi(page))
          .thenAnswer((_) async => emptyResult);

      final eitherResult = await repo.getListGithubStars(page);

      eitherResult.fold(
        (failure) => expect(failure, expectedResult),
        (realResult) => null,
      );

      verifyNoMoreInteractions(mockNetworkSource);
    },
  );
}
