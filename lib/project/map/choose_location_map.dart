// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:internal_app/global/helper/dialog_widget.dart';
import 'package:internal_app/global/helper/widget_submit_helper.dart';
import 'package:internal_app/global/shared/null_extension.dart';
import 'package:internal_app/global/widgets/row_button.dart';
import 'package:internal_app/project/controller/change_project_status_controller.dart';
import 'package:nb_utils/nb_utils.dart';

class ChooseLocationMap extends StatefulWidget {
  final String projectId;
  const ChooseLocationMap({super.key, required this.projectId});
  @override
  State createState() => ChooseLocationMapState();
}

class ChooseLocationMapState extends State<ChooseLocationMap> {
  GoogleMapController? mapController;

  // ignore: use_setters_to_change_properties
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void initState() {
    afterBuildCreated(() async {
      SmartDialog.showLoading();
      LocationPermission permission = await Geolocator.requestPermission();
      Position data = await Geolocator.getCurrentPosition();
      position = LatLng(data.latitude, data.longitude);
      mapController?.animateCamera(
        CameraUpdate.newLatLng(LatLng(data.latitude, data.longitude)),
      );
      SmartDialog.dismiss();
    });

    super.initState();
  }

  LatLng? position;
  changePosition(CameraPosition pos) {
    position = LatLng(pos.target.latitude, pos.target.longitude);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Widget listwidget = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            TextButton(
              onPressed: () {
                mapController?.animateCamera(
                  CameraUpdate.newCameraPosition(
                    const CameraPosition(
                      bearing: 270.0,
                      target: LatLng(51.5160895, -0.1294527),
                      tilt: 30.0,
                      zoom: 17.0,
                    ),
                  ),
                );
              },
              child: const Text('newCameraPosition'),
            ),
            TextButton(
              onPressed: () {
                mapController?.animateCamera(
                  CameraUpdate.newLatLng(
                    const LatLng(56.1725505, 10.1850512),
                  ),
                );
              },
              child: const Text('newLatLng'),
            ),
            TextButton(
              onPressed: () {
                mapController?.animateCamera(
                  CameraUpdate.newLatLngBounds(
                    LatLngBounds(
                      southwest: const LatLng(-38.483935, 113.248673),
                      northeast: const LatLng(-8.982446, 153.823821),
                    ),
                    10.0,
                  ),
                );
              },
              child: const Text('newLatLngBounds'),
            ),
            TextButton(
              onPressed: () {
                mapController?.animateCamera(
                  CameraUpdate.newLatLngZoom(
                    const LatLng(37.4231613, -122.087159),
                    11.0,
                  ),
                );
              },
              child: const Text('newLatLngZoom'),
            ),
            TextButton(
              onPressed: () {
                mapController?.animateCamera(
                  CameraUpdate.scrollBy(150.0, -225.0),
                );
              },
              child: const Text('scrollBy'),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            TextButton(
              onPressed: () {
                mapController?.animateCamera(
                  CameraUpdate.zoomBy(
                    -0.5,
                    const Offset(30.0, 20.0),
                  ),
                );
              },
              child: const Text('zoomBy with focus'),
            ),
            TextButton(
              onPressed: () {
                mapController?.animateCamera(
                  CameraUpdate.zoomBy(-0.5),
                );
              },
              child: const Text('zoomBy'),
            ),
            TextButton(
              onPressed: () {
                mapController?.animateCamera(
                  CameraUpdate.zoomIn(),
                );
              },
              child: const Text('zoomIn'),
            ),
            TextButton(
              onPressed: () {
                mapController?.animateCamera(
                  CameraUpdate.zoomOut(),
                );
              },
              child: const Text('zoomOut'),
            ),
            TextButton(
              onPressed: () {
                mapController?.animateCamera(
                  CameraUpdate.zoomTo(16.0),
                );
              },
              child: const Text('zoomTo'),
            ),
          ],
        ),
      ],
    );
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: GoogleMap(
              indoorViewEnabled: true,
              trafficEnabled: true,
              myLocationEnabled: true,
              onMapCreated: _onMapCreated,
              onCameraMove: (position) {
                changePosition(position);
              },
              onCameraIdle: () {},
              initialCameraPosition: CameraPosition(
                  zoom: 15,
                  target: LatLng(23.602036542892446, 58.35978231654114)),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: Device.width(scale: 12, context: context)),
            child: Column(
              children: [
                Device.spaceY(scale: 3, context: context),
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Theme.of(context).primaryColor,
                        )),
                  ],
                ),
                Spacer(),
                SizedBox(
                  width: Device.width(scale: 200, context: context),
                  child: RowButton(
                    text: "Select This Location",
                  ).submit(
                      onTap: (ref) {
                        ref
                            .read(updateProjectStatusProvider.notifier)
                            .updateOperation(
                              fieldName: "location",
                              value:
                                  'https://www.google.com/maps/search/?api=1&query=${position?.latitude},${position?.longitude}',
                              projectId: widget.projectId.toInt(),
                            );
                      },
                      provider: updateProjectStatusProvider,
                      onSuccess: (onSuccess) {
                        CustomDialog.successDialog(context, okFunction: () {
                          SmartDialog.dismiss();
                          Navigator.pop(context);
                        },
                            successMessage:
                                "Project Location has been updated Successfully");
                      },
                      onFailed: (onFailed) {
                        toast("$onFailed");
                      }),
                ),
                Device.spaceY(scale: 1, context: context),
              ],
            ),
          ),
          Center(
            child: Icon(
              Icons.location_pin,
              color: Colors.red,
              size: 35,
            ),
          )
        ],
      ),
    );
  }
}
