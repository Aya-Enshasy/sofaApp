
class Model {
  String? image;
  String? name;
  String? details;
  String? price;

  Model({
    this.image, this.name, this.details, this.price
  });
}
  Model m1 =new Model(
  image:"assets/chair3.png",
  name: "Modern Chair",
    details: "Lorem Ipsum is simply dummy",
    price: "SAR 119"

  );

Model m2 =new Model(
  image:"assets/table2.png",
  name: "Marble Table",
    details: "Lorem Ipsum is simply dummy",
    price: "SAR 230"

  );
  Model m3 =new Model(
  image:"assets/sofag.png",
  name: "Chouch",
    details: "Lorem Ipsum is simply dummy",
    price: "SAR 500"

  );

Model m4 =new Model(
  image:"assets/chair3.png",
  name: "Marble Chair",
    details: "Lorem Ipsum is simply dummy",
    price: "SAR 220"

  );




List<Model> list = [m1,m2,m3,m4];





