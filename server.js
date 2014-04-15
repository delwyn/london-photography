'use strict';

var gzippo     = require('gzippo');
var express    = require('express');
var bodyParser = require('body-parser');
var morgan     = require('morgan');
var mysql      = require('mysql');
var app        = express();
var env        = app.get('env');
var port       = process.env.PORT || 5000;

var dbConfig, connection;

app.use(bodyParser());
app.use(morgan('dev'));
app.use(gzippo.staticGzip(__dirname + '/dist'));
app.listen(port);

if (env === 'development') {
  dbConfig = {
    host     : 'localhost',
    database : 'photosDevelopment',
    user     : 'delwyn',
    debug    : true
  };
}

connection = mysql.createConnection(dbConfig);

connection.config.queryFormat = function (query, values) {
  console.log('query', query);
  console.log('values', values);

  if (!values) {
    return query;
  }

  return query.replace(/\:(\w+)/g, function (txt, key) {
    console.log('txt', txt);
    console.log('key', key);

    if (values.hasOwnProperty(key)) {
      return this.escape(values[key]);
    }
    return txt;
  }.bind(this));
};
connection.connect();

app.get('/api/lines', function(req, res){
  connection.query('SELECT * FROM tubeLines', function(err, rows) {
    if (err) {
      res.end('Oops, something went wrong!');
    }

    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(rows));
  });
});

app.get('/api/stations', function(req, res){
  connection.query('SELECT * FROM stations', function(err, rows) {
    if (err) {
      res.end('Oops, something went wrong!');
    }

    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(rows));
  });
});

function updateSql(table, fields) {
  return 'UPDATE ' + table + ' SET ' +
    fields.map(function(field) {
      return field + ' = :' + field;
    }).join(', ') +
    ' WHERE id = :id';
}

function insertSql(table, fields) {
  return 'INSERT INTO ' + table + ' (' +
    fields.join(', ') + ')' +
    ' VALUES (' +
    fields.map(function(field) {
      return ':' + field;
    }).join(', ') + ')';
}

app
  .get('/api/photos', function(req, res) {
    connection.query('SELECT * FROM photos', function(err, rows) {
      if (err) {
        res.end('Oops, something went wrong!');
      }

      res.setHeader('Content-Type', 'application/json');
      res.end(JSON.stringify(rows));
    });
  })
  .post('/api/photos', function(req, res) {
    var fields = ['name', 'description', 'lng', 'lat', 'smallUrl', 'largeUrl'];
    var sql = insertSql('photos', fields);

    connection.query(sql, req.body, function(err) {
      if (err) {
        res.end('Oops, something went wrong!');
      }

      res.send(204);
    });
  })
  .put('/api/photos/:id', function(req, res) {
    var fields = ['name', 'description', 'lng', 'lat', 'smallUrl', 'largeUrl'];
    var sql = updateSql('photos', fields);

    console.log('+++++++++++++++++++++++++++');
    console.log(updateSql('photos', fields));
    console.log('+++++++++++++++++++++++++++');
    console.log(insertSql('photos', fields));
    console.log('+++++++++++++++++++++++++++');

    connection.query(sql, req.body, function(err) {
      if (err) {
        res.end('Oops, something went wrong!');
      }

      res.send(204);
    });
  });

console.log('Running ' + app.get('env') + ' on http://localhost:' + port);
