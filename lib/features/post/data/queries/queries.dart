// import 'package:test_3/core/data/data_source/remote/graphql/schema.graphql.dart';
// import 'package:test_3/core/data/data_source/remote/remote_data_source.dart';
// import 'package:test_3/features/post/data/dto/post/post_dto.dart';
// import 'package:test_3/features/post/data/queries/get_post.graphql.dart';

// mixin PostQueries on RemoteDataSource {
//   /// Загружает список избранных постов
//   Future<List<PostDto>> loadFavoritePosts({required int limit}) async {
//     // Создаем переменные для запроса
//     final variables = Variables$Query$FavouritePosts(
//       input: Input$FindFavouritePostsRequest(limit: limit),
//     );
//     // Опции запроса
//     final options = Options$Query$FavouritePosts(variables: variables);

//     // Выполняем запрос
//     final response = await client.query$FavouritePosts(options);

//     // Проверяем ошибки
//     if (response.hasException) {
//       throw Exception(response.exception.toString());
//     }

//     // Получаем данные
//     final data = response.parsedData;
//     if (data == null) {
//       throw Exception('Empty response for favouritePosts');
//     }

//     // // Преобразуем в DTO
//     return [];
//   }
// }
