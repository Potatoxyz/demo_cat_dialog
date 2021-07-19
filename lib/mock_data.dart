List _cats = [
  Cat(
    name: 'a1',
    description: 'this is a cat.this is a cat.this is a cat.this is a cat',
    age: 11,
    imgUrl: 'http://10.0.2.2:8000/a1.jpg',
  ),
  Cat(
    name: 'a2',
    description: 'this is a cat.this is a cat.this is a cat.this is a cat',
    age: 12,
    imgUrl: 'http://10.0.2.2:8000/a2.jpg',
  ),
  Cat(
    name: 'a3',
    description: 'this is a cat.this is a cat.this is a cat.this is a cat',
    age: 13,
    imgUrl: 'http://10.0.2.2:8000/a3.jpg',
  ),
];

class Cat {
  var age;

  var description;

  var name;

  var imgUrl;

  Cat({this.name, this.description, this.age, this.imgUrl});
}

class MockData {
  static final cats = _cats;
}
