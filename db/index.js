const pg = require('pg');
const postgresUrl = 'postgres://localhost/twitterbankdb';
const client = new pg.Client(postgresUrl);

client.connect(function(err){
  console.log('connected');
});

module.exports=client;
