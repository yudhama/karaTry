//function fn() {
//    var env = karate.env; // get system property 'karate.env'
//    karate.log('karate.env system property was:', env);
//    if (!env) {
//        env = 'dev';
//    }
//    var config = {
//        env: env,
//        baseUrl: 'https://petstore.swagger.io/v2'
////        baseUrl: 'https://pokeapi.co/api/v2'
//    }
//    if (env == 'dev') {
//        // customize
//        // e.g. config.foo = 'bar';
//    } else if (env == 'e2e') {
//        // customize
//    }
//    return config;
//}

function() {
  var config = {};
  config.baseUrl = 'https://pokeapi.co/api/v2';
  // other global config variables can go here
  return config;
}