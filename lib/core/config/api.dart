class Api {
  late String baseUrl;
  String? prefix;
  Map<String, dynamic> resources = {};
  Api(Map<String, dynamic> data) {
    _parseData(data);
  }

  _parseData(Map<String, dynamic> data) {
    baseUrl = data['api']['baseurl'][data['api']['status']];
    prefix = data['api']['prefix'];
    resources = data['resources'];
  }

  resolve(Type type) {
    print(type.toString());
    return baseUrl + prefix! + resources[type.toString()];
  }
}
