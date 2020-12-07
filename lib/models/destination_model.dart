

import 'package:Craftrips/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/templeofthetooth.jpg',
    name: 'Temple of Sacred Tooth Relic',
    type: 'Religious Place',
    startTimes: ['9:00 am', '8:00 pm'],
    rating: 5,
    price: 0,
  ),
  Activity(
    imageUrl: 'assets/images/horton.jpg',
    name: 'Horton Plains National Park',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 am', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/gardenpera.jpg',
    name: 'Peradeniya Botanical Gradens',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '5:00 pm'],
    rating: 3,
    price: 125,
  ),
   Activity(
    imageUrl: 'assets/images/hanthana.jpg',
    name: 'Hanthana Mountain',
    type: 'Hiking Tour',
    startTimes: ['9:30 am', '6:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/kandy.jpg',
    city: 'Kandy',
    country: 'Sri Lanka',
    description: 'Visit Kandy for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/colombo.jpg',
    city: 'Colombo',
    country: 'Sri Lanka',
    description: 'Visit Colombo for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/nuwaraeliya.jpg',
    city: 'Nuwara Eliya',
    country: 'Sri Lanka',
    description: 'Visit Nuwara-Eliya for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/galle.jpg',
    city: 'Galle',
    country: 'Sri Lanka',
    description: 'Visit Galle for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/anuradhapura.jpg',
    city: 'Anuradhapura',
    country: 'Sri Lanka',
    description: 'Visit Anuradhapura for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/galle.jpg',
    city: 'Hikkaduwa',
    country: 'Sri Lanka',
    description: 'Visit Hikkaduwa for an amazing and unforgettable adventure.',
    activities: activities,
  ),
];
