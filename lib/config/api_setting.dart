class ApiSetting {
  final String baseUrl = 'https://st-buyback.sankyutech.com/api/';

  setHeaders() => {
        'Content-type': 'application/json;charset=UTF-8',
        'Accept': 'application/json',
        'Charset': 'utf-8',
      };

  setImageHeaders() => {
        'Content-Type': 'multipart/form-data',
        'Accept': 'application/json',
        'Charset': 'utf-8',
      };
}
