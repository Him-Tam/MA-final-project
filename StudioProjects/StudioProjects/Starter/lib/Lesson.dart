import 'dart:io';

void main(){
  List<Map<String, dynamic>> product = [];
  stdout.write("Enter number of products:");
  int? numOfPro = int.parse(stdin.readLineSync()!);

  for(int i=1; i<=numOfPro; i++){
    stdout.write("Product Name:");
    String? name = stdin.readLineSync();
    stdout.write("Product Qty:");
    int? qty = int.parse(stdin.readLineSync()!);
    stdout.write("Product Price:");
    double? price = double.parse(stdin.readLineSync()!);
    stdout.write("Product Discount(%):");
    double? dis = double.parse(stdin.readLineSync()!);
    print("+++++++++++++++++++++++++++++++++++++++++++");

    double disprice = price! * qty!;
    double discount = (disprice * dis!)/100;
    double totalprice = disprice - discount;

    product.add({
      'name': name,
      'qty': qty,
      'price' : price,
      'discount': discount,
      'totalprice': totalprice
    });
  }

  print("ID     Name      Qty     Price     Dis     TotalPrice");
  for(int i=0; i< product.length; i++){
    var p = product[i];
    print("${i+1}     ${p['name']}      ${p['qty']}     ${p['price']}     ${p['discount']}     ${p['totalprice']}");
  }
}
