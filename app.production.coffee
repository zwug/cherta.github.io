axis         = require 'axis'
rupture      = require 'rupture'
jeet         = require 'jeet'
autoprefixer = require 'autoprefixer-stylus'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  extensions: [
    js_pipeline(files: 'assets/js/*.coffee', out: 'js/build.js', minify: true, hash: false),
    css_pipeline(files: 'assets/css/*.styl', out: 'css/build.css', minify: true, hash: false)
  ]

  stylus:
    use: [axis(), rupture(), jeet(), autoprefixer()]