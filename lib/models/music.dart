import 'package:spotify/res/media_res.dart';

class Music {
  final String? title;
  final String? singer;
  final String? media;
  final String? duration;

  Music({this.title, this.singer, this.media, this.duration});
}

List<Music> homeNewsList = [
  Music(title: 'Bad Guy', singer: 'Billie Eilish', media: MediaRes.home1Image),
  Music(title: 'Scorpion', singer: 'Drake', media: MediaRes.home2Image),
  Music(
      title: 'WHEN WE ALL FALL ASLEEP, WHERE DO WE GO?',
      singer: 'Billie Eilish',
      media: MediaRes.home3Image),
];

List<Music> homePlaylistList = [
  Music(title: 'As It Was', singer: 'Harry Styles', duration: '5:33'),
  Music(title: 'God Did', singer: 'DJ Khaled', duration: '3:43'),
  Music(title: '''Shouldn't Be''', singer: 'Luke Chiang', duration: '3:30'),
];

List<Music> publicPlaylist = [
  Music(
    media: MediaRes.profilePlaylist1Image,
    title: "Dont Smile At Me",
    singer: "Billie Eilish",
    duration: "5:33",
  ),
  Music(
    media: MediaRes.profilePlaylist2Image,
    title: "As It Was",
    singer: "Harry Styles",
    duration: "5:33",
  ),
  Music(
    media: MediaRes.profilePlaylist3Image,
    title: "Super Freaky Girl",
    singer: "Nicki Minaj",
    duration: "5:33",
  ),
  Music(
    media: MediaRes.profilePlaylist4Image,
    title: "Bad Habit",
    singer: "Steve Lacy",
    duration: "5:33",
  ),
  Music(
    media: MediaRes.profilePlaylist5Image,
    title: "Planet Her",
    singer: "Doja Cat",
    duration: "5:33",
  ),
  Music(
    media: MediaRes.profilePlaylist6Image,
    title: "Sweetest Pie",
    singer: "Megan Thee Stallion",
    duration: "5:33",
  ),
];

List<Music> articsAlbumList = [
  Music(
    media: MediaRes.favAlbum1Image,
    title: 'Lilbubblegum',
  ),
  Music(
    media: MediaRes.favAlbum2Image,
    title: 'Happier Than Ever',
  ),
  Music(
    media: MediaRes.favAlbum3Image,
    title: 'Dont Smile At Me',
  ),
];

List<Music> articsSongList = [
  Music(title: 'Dont Smile At Me', singer: 'Billie Eilish', duration: '5:33'),
  Music(title: 'Lilbubblegum', singer: 'Billie Eilish', duration: '5:33'),
];
