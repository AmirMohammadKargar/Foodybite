class Users {
  String name;
  String imageUrl;
  String email;
  List<String> reviews;
  int follower;
  int following;

  Users({
    this.name,
    this.imageUrl,
    this.email,
    this.reviews,
    this.follower,
    this.following,
  });
}

final List<Users> users = [
  Users(
    imageUrl: 'assets/images/profile1.png',
    name: 'John Wick',
    email: 'john@gmail.com',
    follower: 56,
    following: 150,
  ),
  Users(
    imageUrl: 'assets/images/profile2.png',
    name: 'Ted',
    email: 'john@gmail.com',
    follower: 100,
    following: 50,
  ),
  Users(
    imageUrl: 'assets/images/profile3.png',
    name: 'Philipe',
    email: 'john@gmail.com',
    follower: 20,
    following: 0,
  ),
  Users(
    imageUrl: 'assets/images/profile4.png',
    name: 'Morgan',
    email: 'john@gmail.com',
    follower: 800,
    following: 2000,
  ),
  Users(
    imageUrl: 'assets/images/profile6.png',
    name: 'Mike',
    email: 'john@gmail.com',
    follower: 56,
    following: 150,
  ),
  Users(
    imageUrl: 'assets/images/profile7.png',
    name: 'Miller',
    email: 'john@gmail.com',
    follower: 56,
    following: 150,
  ),
  Users(
    imageUrl: 'assets/images/profile8.png',
    name: 'Tim',
    email: 'john@gmail.com',
    follower: 56,
    following: 150,
  ),
];
