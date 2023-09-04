class Checkout{
  String name = '';
  String address = '';
  String city = '';
  String state = '';
  String code = '';
  String country = '';

  Checkout ({
    required this.name,
    required this.city,
    required this.address,
    required this.code,
    required this.country,
    required this.state,
  });

  Checkout.fromJson(Map<String,dynamic>json){
   name = json['name'];
   city = json['city'];
   address = json['address'];
   code = json['code'];
   country= json['country'];
  state = json['state'];
  }

  Map <String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data['name'] = this.name;
    data[' city'] = this. city;
    data[' address'] = this. address;
    data[' code '] = this. code ;
    data ['country']= this.country;
    data['state']= this.state;
    return data;
  }
}