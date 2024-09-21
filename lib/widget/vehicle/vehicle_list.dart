import 'package:flutter/material.dart';
import 'package:rent_app/model/user.dart';
import 'package:rent_app/model/vehicle_rental.dart';

class VehicleList extends StatelessWidget {
  final User user;
  const VehicleList({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
        left: 8,
        right: 8,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemBuilder: (context, index) {
          final VehicleRental vehicle = listVehicleRental[index];
          return Card(
            shadowColor: Colors.black,
            elevation: 5,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Stack(
                    children: [
                      Image.asset(
                      vehicle.image,
                      fit: BoxFit.cover,
                    )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Text(vehicle.name),
                const SizedBox(height: 5),
                Text(vehicle.pricePerDay.toString()),
                const SizedBox(height: 5),
              ],
            ),
          );
        },
        itemCount: listVehicleRental.length,
      ),
    );
  }
}
