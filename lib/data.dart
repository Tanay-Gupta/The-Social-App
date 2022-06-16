import 'package:swag_app/models/story_model.dart';
import 'package:swag_app/models/user_model.dart';

final User user = User(
  name: 'Miss Muskaan',
  profileImageUrl: 'https://wallpapercave.com/wp/AYWg3iu.jpg',
);
final List<Story> stories = [
  Story(
    url:
        'https://images.unsplash.com/photo-1579037199070-5ddf23c52bfc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80',
    media: MediaType.image,
    duration: const Duration(seconds: 10),
    user: user,
  ),
  Story(
    url: 'https://media.giphy.com/media/moyzrwjUIkdNe/giphy.gif',
    media: MediaType.image,
    user: User(
      name: 'John Doe',
      profileImageUrl: 'https://wallpapercave.com/wp/AYWg3iu.jpg',
    ),
    duration: const Duration(seconds: 7),
  ),
  // Story(
  //   url:
  //       'https://static.videezy.com/system/resources/previews/000/005/529/original/Reaviling_Sjusj%C3%B8en_Ski_Senter.mp4',
  //   media: MediaType.video,
  //   duration: const Duration(seconds: 0),
  //   user: user,
  // ),
  Story(
    url:
        'https://images.unsplash.com/photo-1531694611353-d4758f86fa6d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=564&q=80',
    media: MediaType.image,
    duration: const Duration(seconds: 5),
    user: user,
  ),
  // Story(
  //   url:
  //       'https://static.videezy.com/system/resources/previews/000/007/536/original/rockybeach.mp4',
  //   media: MediaType.video,
  //   duration: const Duration(seconds: 0),
  //   user: user,
  // ),
  Story(
    url: 'https://media2.giphy.com/media/M8PxVICV5KlezP1pGE/giphy.gif',
    media: MediaType.image,
    duration: const Duration(seconds: 8),
    user: user,
  ),
];