'use strict';

var passport = require('passport');

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

function logShit(req) {
  console.log('==============================');
  console.log('req.user', req.user);
  console.log('req.session', req.session);
  console.log('isAuthenticated', req.isAuthenticated());
  console.log('==============================');
}

function authenticate(req, res, next) {
  if (req.isAuthenticated()) {
    return next();
  }

  res.send(401);
}

module.exports = function(app, connection) {
  app
    .get('/public', function(req, res) {
        res.send('public');
    })

    .get('/private', authenticate, function(req, res) {
        res.send('private');
    })

    .get('/api/lines', function(req, res){
      connection.query('SELECT * FROM tubeLines', function(err, rows) {
        if (err) {
          res.end('Oops, something went wrong!');
        }

        res.setHeader('Content-Type', 'application/json');
        res.end(JSON.stringify(rows));
      });
    })

    .get('/api/stations', function(req, res){
      connection.query('SELECT * FROM stations', function(err, rows) {
        if (err) {
          res.end('Oops, something went wrong!');
        }

        res.setHeader('Content-Type', 'application/json');
        res.end(JSON.stringify(rows));
      });
    })
    // , authenticate
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

      // console.log('+++++++++++++++++++++++++++');
      // console.log(updateSql('photos', fields));
      // console.log('+++++++++++++++++++++++++++');
      // console.log(insertSql('photos', fields));
      // console.log('+++++++++++++++++++++++++++');

      connection.query(sql, req.body, function(err) {
        if (err) {
          res.end('Oops, something went wrong!');
        }

        res.send(204);
      });
    })

    .post('/api/login', passport.authenticate('local', {}), function(req, res) {
      // console.log('LOGIN');
      // var user = req.body;

      logShit(req);

      // if (user.username === 'delwyn.d@gmail.com' && user.password === 'secret') {
      //   // console.log('logged in', user);
      res.setHeader('Content-Type', 'application/json');
      res.send(200);
      //   res.end(JSON.stringify(user));
      // } else {
      //   // console.log('fishy failure');
      //   res.send(401);
      // }
    })

    .get('/api/logout', function(req, res){
      req.logout();
      res.send(200);
    });
};
