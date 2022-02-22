import 'package:my_garage/data/models/car_model.dart';
import 'package:my_garage/data/dataproviders/sembast.dart';
import 'package:sembast/sembast.dart';
import 'package:uuid/uuid.dart';

Uuid _uuid = const Uuid();

class GarageService {
  final SembastDatabase _db;
  final _store = intMapStoreFactory.store('cars');
  GarageService(
    this._db,
  );
  Stream<List<Car>> getAllCarsSteams() {
    var _finder = Finder(sortOrders: [SortOrder(Field.key)]);
    return _store
        .query(finder: _finder)
        .onSnapshots(_db.instance)
        .map((records) => records.map((snapshot) {
              final car = Car.fromJson(snapshot.value);
              return car;
            }).toList());
  }
  
  Future<void> addNewCar(Car car) async {
    final newCar = car.copyWith(uuid: _uuid.v4());
    await _store.add(_db.instance, newCar.toJson());
  }

  Future<void> deleteCar(Car car) async {
    final finder = Finder(filter: Filter.equals('uuid', car.uuid));
    await _store.delete(_db.instance, finder: finder);
  }
}

