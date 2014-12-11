'use strict';

var gzippo        = require('gzippo');
var express       = require('express');
var cookieParser  = require('cookie-parser');
var session       = require('express-session');
var bodyParser    = require('body-parser');
var morgan        = require('morgan');
var mysql         = require('mysql');
var app           = express();
var env           = app.get('env');
var passport      = require('passport');
var LocalStrategy = require('passport-local');
var port          = process.env.PORT || 5000;

var dbConfig, connection;

app.use(gzippo.staticGzip(__dirname + '/dist'));
app.use(cookieParser());
app.use(bodyParser());
app.use(session({ secret: 'keyboard cat', proxy: true }));
app.use(passport.initialize());
app.use(passport.session());
app.use(morgan('dev'));
app.listen(port);

if (env === 'development') {
  dbConfig = {
    host     : 'localhost',
    database : 'photosDevelopment',
    user     : 'delwyn'
    // debug    : true
  };
}

var users = [
  { id: 1, password: 'secret', email: 'delwyn.d@gmail.com' }
];

function findByEmailAndPassword(email, password, fn) {
  var user;

  for (var i = 0; i < users.length; i++) {
     user = users[i];

    if (user.email === email && user.password === password) {
      return fn(null, user);
    }
  }

  return fn(null, null);
}

function findById(id, fn) {
  var user;

  for (var i = 0; i < users.length; i++) {
     user = users[i];

    if (user.id === id) {
      return fn(null, user);
    }
  }

  return fn(null, null);
}

passport.serializeUser(function(user, done) {
  console.log('serializing user', user);
  done(null, user.id);
});

passport.deserializeUser(function(id, done) {
  console.log('deserializing user', id);
  findById(id, function (err, user) {
    console.log('found user', user);
    done(err, user);
  });
});

var strategy = new LocalStrategy({
    usernameField: 'email'
  },
  function(email, password, done) {
    process.nextTick(function () {
      findByEmailAndPassword(email, password, function(err, user) {
        if (err) {
          return done(err);
        }

        if (!user) {
          return done(null, false, { message: 'Incorrect details' });
        }

        return done(null, user);
      });
    });
  }
);

passport.use(strategy);

connection = mysql.createConnection(dbConfig);

connection.config.queryFormat = function (query, values) {
  if (!values) {
    return query;
  }

  return query.replace(/\:(\w+)/g, function (txt, key) {
    if (values.hasOwnProperty(key)) {
      return this.escape(values[key]);
    }

    return txt;
  }.bind(this));
};

connection.connect();

require('./routes')(app, connection);

console.log('Running ' + app.get('env') + ' on http://localhost:' + port);
