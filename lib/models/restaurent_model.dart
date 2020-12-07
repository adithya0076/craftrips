class Restaurent {
  final String id;
  final String title;
  final String imageUrl;
  final String address;
  final String description;

  Restaurent(
      {this.id, this.title, this.imageUrl, this.address, this.description});
}

final List<Restaurent> restaurents = [
  Restaurent(
    id: 'r1',
    title: 'Dinemore',
    imageUrl: 'assets/images/murano.jpg',
    address: 'Kandy,Sri lanka',
    description: 'Looking For Vegetarian, Vegan Or Healthy Food Choices? You\'ll Find Them Right Here, As Well As All Your Favorites Directly From The Pan. Our Menu Offers Great Delights That Will Get You Going Through Anyday. Made To Order Just The Way You Likeit',
  ),
  Restaurent(
    id: 'r2',
    title: 'Hill Top',
    imageUrl: 'assets/images/mountblue.jpg',
    address: 'Kandy,Sri lanka',
    description: 'Located in Kandy, 1.5 km from Sri Dalada Maligawa, Mount Blue Kandy provides accommodation with a restaurant, free private parking, an outdoor swimming pool and a garden. Among the facilities at this property are room service and a tour desk, along with free WiFi throughout the property. The hotel features family rooms.',
  ),
  Restaurent(
    id: 'r3',
    title: 'Ozo Kandy',
    imageUrl: 'assets/images/ozo.jpg',
    address: 'Kandy,Sri lanka',
    description: 'Choose from a wide range of properties which Booking.com offers. Search now! Book at Ozo Kandy, Kandy. No Reservation Costs. Great Rates. Secret Deals. No booking fees. Save money. Recent guest reviews. 24/7 Customer Service. Great choice.',
  ),
  Restaurent(
    id: 'r4',
    title: 'Ozo Kandy',
    imageUrl: 'assets/images/ozo.jpg',
    address: 'Kandy,Sri lanka',
    description: 'Choose from a wide range of properties which Booking.com offers. Search now! Book at Ozo Kandy, Kandy. No Reservation Costs. Great Rates. Secret Deals. No booking fees. Save money. Recent guest reviews. 24/7 Customer Service. Great choice.',
  ),
];
