void main() {
  NetworkServicesApi networkServicesApi = NetworkServicesApi();
  Map<String, String> data = {'email': 'rehman@gmail.com', 'password': '23432'};
  networkServicesApi.postApi(data);
}

abstract class baseApiServices {
  void postApi(var data);

  void getApi();
}

class NetworkServicesApi extends baseApiServices {
  @override
  void getApi() {
    // TODO: implement getApi
  }

  @override
  void postApi(var data) async {
    print('Api Hit');
    await Future.delayed(Duration(seconds: 3));
    print('user succesfully login');
    print(data['email']);
  }
}
