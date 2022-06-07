class User {
  final String imagePath;
  final String name;
  final String typeOfFarmer;
  final String address;
  final String state;
  final int followers;
  final int following;
  final int posts;
  final int comments;

  User(
      {required this.name,
      required this.typeOfFarmer,
      required this.address,
      required this.state,
      required this.posts,
      required this.following,
      required this.imagePath,
      required this.comments,
      required this.followers});
}
