class Restaurent {
  final String id;
  final String title;
  final String imageUrl;
  final String address;

  Restaurent({this.id, this.title, this.imageUrl, this.address});
}

final List<Restaurent> restaurents = [
  Restaurent(
    id: 'r1',
    title: 'Dinemore',
    imageUrl: 'assets/images/murano.jpg',
    address: 'Kandy,Sri lanka',
  ),
  Restaurent(
    id: 'r2',
    title: 'Hill Top',
    imageUrl: 'assets/images/mountblue.jpg',
    address: 'Kandy,Sri lanka',
  ),
  Restaurent(
    id: 'r3',
    title: 'Ozo Kandy',
    imageUrl: 'assets/images/ozo.jpg',
    address: 'Kandy,Sri lanka',
  ),
];
