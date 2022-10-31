import 'package:equatable/equatable.dart';
import 'package:flutter_root/models/product.dart';

class Batch extends Equatable {
  final String productId;
  final String batchName;
  final String location;
  final Status status;
  final User user;
  final List<Product> products;

  const Batch(this.productId, this.batchName, this.location, this.status,
      this.user, this.products);

  @override
  List<Object?> get props =>
      [productId, batchName, location, status, user, products];
}

class User extends Equatable {
  final String username;
  final String firstName;
  final String lastName;
  final String address;

  const User(this.username, this.firstName, this.lastName, this.address);

  @override
  // TODO: implement props
  List<Object?> get props => [username, firstName, lastName, address];
}
