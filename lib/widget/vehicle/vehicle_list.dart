import 'package:flutter/material.dart';
import 'package:rent_app/model/user.dart';
import 'package:rent_app/model/vehicle_rental.dart';
import 'package:rent_app/widget/vehicle/vehicle_detail_screen.dart';

class VehicleList extends StatelessWidget {
  final User user;
  const VehicleList({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return const VehicleListMobileScreen();
      } else if (constraints.maxWidth < 1200) {
        return const VehicleListWebScreen(count: 4);
      } else {
        return const VehicleListWebScreen(count: 6);
      }
    });
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red.shade700,
        ));
  }
}

class VehicleListMobileScreen extends StatelessWidget {
  const VehicleListMobileScreen({super.key});

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
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          final VehicleRental vehicle = listVehicleRental[index];
          return Card(
            shadowColor: Colors.black,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    child: Stack(
                      children: [
                        Image.asset(
                          vehicle.image,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 100,
                        ),
                        Positioned(
                          top: 5,
                          right: 5,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            color: vehicle.isAvailable
                                ? Colors.green.shade200
                                : Colors.red.shade200,
                            child: Text(
                              vehicle.isAvailable
                                  ? 'Available'
                                  : 'Not Available',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(vehicle.name,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Icon(vehicle.type == 'Car'
                          ? Icons.car_rental_sharp
                          : Icons.motorcycle_sharp),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Rp ${vehicle.pricePerDay}',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            '/day',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => VehicleDetailScreen(vehicle: vehicle))),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red.shade700,
                            padding: const EdgeInsets.symmetric(
                                vertical: 6, horizontal: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            "Rent Now",
                            style: TextStyle(color: Colors.white),
                          )),
                      const FavoriteButton(),
                    ],
                  ),
                ),
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

class VehicleListWebScreen extends StatelessWidget {
  final int count;
  const VehicleListWebScreen({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    // make responsive for web and ipad
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
        left: 8,
        right: 8,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: count,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          final VehicleRental vehicle = listVehicleRental[index];
          return Card(
            shadowColor: Colors.black,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            vehicle.image,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                          Positioned(
                            top: 5,
                            right: 5,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              color: vehicle.isAvailable
                                  ? Colors.green.shade200
                                  : Colors.red.shade200,
                              child: Text(
                                vehicle.isAvailable
                                    ? 'Available'
                                    : 'Not Available',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(vehicle.name,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis)),
                      Icon(vehicle.type == 'Car'
                          ? Icons.car_rental_sharp
                          : Icons.motorcycle_sharp),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Flexible(
                        child: Row(
                          children: [
                            Text(
                              'Rp ${vehicle.pricePerDay}',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              '/day',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => VehicleDetailScreen(vehicle: vehicle))),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red.shade700,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text(
                              "Rent Now",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      const FavoriteButton(),
                    ],
                  ),
                ),
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