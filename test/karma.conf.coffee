module.exports = (config) ->
  config.set

    # base path that will be used to resolve all patterns (eg. files, exclude)
    basePath: '../'

    # available frameworks: https://npmjs.org/browse/keyword/karma-adapter
    frameworks: [
      'mocha'
      'chai'
    ]

    # list of files / patterns to load in the browser
    files: ['test/unit/**/*.coffee']

    # available preprocessors: https://npmjs.org/browse/keyword/karma-preprocessor
    preprocessors:
      '**/*.coffee': ['coffee']


    # available reporters: https://npmjs.org/browse/keyword/karma-reporter
    reporters: [
      'progress'
      'coverage'
      'mocha'
    ]

    colors: true

    # possible values: config.LOG_DISABLE || config.LOG_ERROR || config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
    logLevel: config.LOG_INFO

    # enable / disable watching file and executing tests whenever any file changes
    autoWatch: false

    # available browser launchers: https://npmjs.org/browse/keyword/karma-launcher
    browsers: [
      'PhantomJS'
      'Chrome'
    ]

    # Continuous Integration mode if true, Karma captures browsers, runs the tests and exits
    singleRun: true

    coverageReporter :
      type : 'html'
      dir : 'test/coverage/'

    reportSlowerThan : 500
    singleRun : true

    coffeePreprocessor :
      options :
        bare : true
        sourceMap : true

      transformPath : (path) ->
        path.replace /\.coffee$/, '.js'
