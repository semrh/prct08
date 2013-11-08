$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

desc "Ejecutando las pruebas para el codigo de Matrices"
task :speclocal do
  sh "rspec -I. spec/Matrices_spec.rb"
end

desc "Ejecutando las pruebas para el codigo de Matrices con documentacion"
task :run do
  sh "rspec -I. spec/Matrices_spec.rb --format documentation"
end

desc "Ejecutando las pruebas para el codigo de Matrices con documentacion"
task :thtml do
  sh "rspec -I. spec/Matrices_spec.rb --format html"
end
