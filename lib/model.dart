
class Shohada{
  String _name;
  String _description;
  String _imageUrl;
  String _bornDate;
  String _shDate;
  // final web = 'https://whispering-cliffs-64993.herokuapp.com';
  // String imgUrl(){
  //   try{
  //     return _imageUrl ;
  //   }catch(e){
  //     return 'https://www.google.com/images/branding/googlelogo/2x/googlelogo_light_color_272x92dp.png';
  //   }
  // }

  Shohada(this._name, this._description, this._imageUrl, this._bornDate,
      this._shDate);

  String get shDate => _shDate;

  String get bornDate => _bornDate;

  String get imageUrl => _imageUrl;

  String get description => _description;

  String get name => _name;
}