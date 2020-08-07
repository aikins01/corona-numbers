class Endpoints {
  Endpoints._();

  // base url
  static const baseUrlStatistics = "https://api.covid19api.com";

  // base url to retreieve user's country ISO2 code
  static const baseUrlIPLookup = "https://ip.rootnet.in/lookup";

  // receiveTimeout
  static const receiveTimeout = 5000;

  // connectTimeout
  static const connectionTimeout = 3000;

  // fetch Home Data (Global and Countries Summary)
  static const _fetchHomeData = '/summary';

  // fetch Statistics about a particulr country
  static const _fetchCountryStatistics = '/total/country/';



  static String get fetchHomeData => baseUrlStatistics + _fetchHomeData;

  static String get fetchCountryStatistics =>
      baseUrlStatistics + _fetchCountryStatistics;

  static String get fetchCurrentCountry => baseUrlIPLookup;

}
