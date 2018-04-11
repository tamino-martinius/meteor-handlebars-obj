Package.describe({
  name: 'zaku:handlebars-obj',
  summary: 'Easily create plain objects with computed keys as Handlebars helper.',
  version: '0.2.0',
  git: 'https://github.com/tamino-martinius/meteor-handlebars-obj.git'
});

Package.onUse(function (api) {
  api.versionsFrom('METEOR@0.9.0');
  api.use([
    'mrt:obj@1.0.0',
    'coffeescript@1.0.17',
    'standard-app-packages'
  ], 'client');

  api.addFiles('client.coffee', 'client');
});

Package.onTest(function (api) {
  api.use([
    'coffeescript',
    'standard-app-packages',
    'zaku:handlebars-obj',
    'test-helpers',
    'tinytest'
  ], 'client');
  api.addFiles([
    'test.html',
    'test.coffee'
  ], 'client');
});
