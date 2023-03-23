class ProductDataModel {
  int? id;
  String? product_name;
  int? product_salary;
  String? profile_image;

  ProductDataModel(
    {
    this.id, 
    this.product_name, 
    this.product_salary,
    this.profile_image,
    }
  );

  ProductDataModel.formJson(Map<String,dynamic> json){
    id = json ['id'];
    product_name = json ['product_name'];
    product_salary = json ['product_salary'];
    profile_image = json ['profile_image']
;  }

  get imageURL => null;
}