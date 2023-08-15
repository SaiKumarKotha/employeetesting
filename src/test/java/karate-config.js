function fn() {
  var env = 'dev'; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    empApiBaseUrl: 'http://127.0.0.1:54402/'
  }
  return config;
}