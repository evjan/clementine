require 'rubygems'
require "clementine/version"
if defined?(RUBY_ENGINE) && RUBY_ENGINE == "jruby"
  require "java"

  CLOJURESCRIPT_HOME = File.dirname(__FILE__) + "/../vendor/assets"
  $: << CLOJURESCRIPT_HOME + "/lib"
  require 'clojure'

  %w{compiler.jar goog.jar js.jar}.each {|name| $CLASSPATH << CLOJURESCRIPT_HOME + "/lib/" + name}
  %w{clj cljs}.each {|path| $CLASSPATH << CLOJURESCRIPT_HOME + "/src/" + path}

  require "clementine/clojurescript_engine"
  require "clementine/clojurescript_template"
end