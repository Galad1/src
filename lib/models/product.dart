import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter_root/models/batch.dart';

class Product extends Equatable {
  final String productId;
  final String name;
  final String location;
  final Status status;

  const Product(this.productId, this.name, this.status, this.location);

  static Iterable<Product> generateProducts() {
    List<Product> products = [];

    for (var i = 0; i < 25; i++) {
      products.add(Product(
          'Product-${faker.vehicle.make()}',
          'PICK-${faker.randomGenerator.integer(3000)}',
          Status.active,
          faker.address.city()));
    }
    return products;
  }

  static Iterable<Batch> generateBatches() {
    List<Batch> batches = [];
    for (var i = 0; i < 25; i++) {
      batches.add(Batch(
          'BATCH-${faker.guid.guid()}',
          'PICK-${faker.randomGenerator.integer(3000)}',
          '${faker.address.city()} - ${faker.address.buildingNumber()}',
          Status.active,
          User(faker.person.name(), faker.person.firstName(),
              faker.person.lastName(), faker.address.city()),
          generateProducts().toList()));
    }

    return batches;
  }

  @override
  List<Object?> get props => [productId, name, location, status];
}

enum Status { active, started }
