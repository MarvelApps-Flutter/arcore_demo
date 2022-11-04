class ItemModel {
  String? pngImageUrl;
  String? title;
  String? price;
  String? gltfImageUrl;

  ItemModel(this.pngImageUrl, this.title, this.price, this.gltfImageUrl);
}

List<ItemModel> items = [
  ItemModel('assets/images/glam_velvet.jpg', 'Glam Velvet Sofa', '90.00',
      'assets/images/GlamVelvetSofa.gltf'),
  ItemModel('assets/images/iridescense.jpg', 'Iridescence lamp', '50.00',
      'assets/images/IridescenceLamp.gltf'),
  ItemModel('assets/images/lights_punctual_lamp.png', 'Lights Punctual Lamp',
      '40.00', 'assets/images/LightsPunctualLamp.gltf'),
  ItemModel('assets/images/sheen_chair.jpg', 'Sheen Chair', '59.00',
      'assets/images/SheenChair.gltf'),
];
