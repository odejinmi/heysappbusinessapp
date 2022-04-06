// const url = "http://10.0.2.2:3030/"; //emulator
const url = "https://heysap.staging.5starcompany.com.ng/api/"; //local network
// const url = "https://shopper.techplushost.com/"; //test env

const debug = true;

String token="";

var abitID = "";

parseURL(uri) {
  var uu = Uri.parse(url + uri);
  print(uu);
  return uu;
}

parseImageURL(uri) {
  var uu = url + uri;
  // print(uu);
  return uu;
}
