import 'package:ecom_modwir/controller/orders/archive_controller.dart';
import 'package:ecom_modwir/core/class/handlingdataview.dart';
import 'package:ecom_modwir/view/widget/orders/orders_archive_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrdersArchiveView extends StatelessWidget {
  const OrdersArchiveView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OrdersArchiveController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Archived Orders"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GetBuilder<OrdersArchiveController>(
          builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: ListView.builder(
              itemCount: controller.data.length,
              itemBuilder: (context, index) => CardOrderListArchive(
                listData: controller.data[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
