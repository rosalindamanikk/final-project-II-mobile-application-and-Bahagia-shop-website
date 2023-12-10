import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../../../../routes/app_routers.gr.dart';
import '../../../../shared/theme.dart';
import '../../data/models/credit/credit_model.dart';
import '../bloc/credit_bloc.dart';
import '../bloc/credit_event.dart';
import '../bloc/credit_state.dart';
import '../shared/custom_filled_button.dart';

const List<String> _paymentMethods = [
  'Dana',
  'OVO',
  'Gopay',
  'ShoppePay',
  'Mobile Banking',
];

class CreditCheckoutScreen extends StatefulWidget {
  static const String routeName = '/credit/checkout';
  final Credit credit;
  const CreditCheckoutScreen(this.credit, {Key? key}) : super(key: key);

  @override
  State<CreditCheckoutScreen> createState() => _CreditCheckoutScreenState();
}

class _CreditCheckoutScreenState extends State<CreditCheckoutScreen> {
  String _selectedPaymentMethod = '';
  String _description = '';
  TextEditingController _descriptionController = TextEditingController();

  @override
  void dispose() {
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocListener<CreditBloc, CreditState>(
        listener: (context, state) {
          if (state is CreditCheckoutSuccessState) {
            AutoRouter.of(context).pushAndPopUntil(
              CreditCheckoutSuccessScreen(order: state.order),
              predicate: (route) => false,
            );
          }
        },
        child: Scaffold(
          backgroundColor: const Color(0xFFF3F6FB),
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: const Text(
              'Pesan Sekarang',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.credit.provider,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  // product name
                                  Text(
                                    widget.credit.nominal,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  // product price
                                  Text(
                                    'Rp. ${widget.credit.price}',
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Nomor Handphone',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: _descriptionController,
                          onChanged: (value) {
                            setState(() {
                              _description = value;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: 'Masukan Nomor Handphone',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // payment method
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Cara Pembayaran',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // divider
                        Divider(
                          color: Colors.grey.withOpacity(0.2),
                          thickness: 2,
                        ),
                        // List of payment method
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: _paymentMethods.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  _selectedPaymentMethod =
                                  _paymentMethods[index];
                                });
                              },
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    _paymentMethods[index],
                                    style: TextStyle(
                                      color: dark,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Radio(
                                    value: _paymentMethods[index],
                                    groupValue: _selectedPaymentMethod,
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedPaymentMethod = value!;
                                      });
                                    },
                                    activeColor: chocolate,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          bottomSheet: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total: Rp. ${widget.credit.price}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomFilledButton(
                  text: 'Buatkan Pesanan',
                  onPressed: () {
                    if (_selectedPaymentMethod.isEmpty) {
                      EasyLoading.showError('Pilih Metode Pembayarannya');
                    }
                    if (_description.isEmpty) {
                      EasyLoading.showError('Masukkan Nomor Telephone');
                    } else if (!_description.contains(RegExp(r'^[0-9]+$')) || _description.length < 12) {
                      EasyLoading.showError('Masukkan Nomor Telephone yang valid (minimal 12 angka)');
                    }
                    else {
                      context.read<CreditBloc>().add(
                        CreditCheckoutEvent(
                          widget.credit,
                          _selectedPaymentMethod,
                          _description,
                        ),
                      );
                    }
                  },
                  width: 150,
                  gradient: gradient,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
