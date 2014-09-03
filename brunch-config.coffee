exports.config =
  paths:
    public: 'public'

  conventions:
    assets: /(assets|vendor\/assets|font)/

  files:
    javascripts:
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^(vendor|bower_components)/
      order:
        before: ['vendor/underscore.js']

    stylesheets:
      joinTo:
        'stylesheets/app.css': /^app/
        'stylesheets/vendor.css': /^(vendor|bower_components)/

    templates:
      joinTo:
        'javascripts/templates.js': /.+\.jade$/

  plugins:
    jade:
      options:
        pretty: yes

    cleancss:
      keepSpecialComments: 0
      removeEmpty: true
