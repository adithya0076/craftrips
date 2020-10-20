class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/amayahills.jpg',
    name: 'Hotel Amaya Hills',
    address: ' Heerassagala, Kandy, Sri Lanka',
    price: 175,
  ),
  Hotel(
    imageUrl: 'assets/images/grandkandyan.jpg',
    name: 'Grand Kandyan',
    address: '89/10,Lady Gordon`s Drive,Kandy',
    price: 300,
  ),
  /*Hotel(
    imageUrl: 'assets/images/ozo.jpg',
    name: 'Hotel OZO',
    address: 'No 31, Saranankara Mawatha,Kandy',
    price: 240,
  ),*/
];
