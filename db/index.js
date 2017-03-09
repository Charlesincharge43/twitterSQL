const pg = require('pg');
var postgresUrl = 'postgres://localhost/twitterbankdb';
var client = new pg.Client(postgresUrl);

client.connect(function(err){
  console.log('connected');
});

module.exports=client;
