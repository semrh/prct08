task :default => :spec

desc "Ejecutando las pruebas para el codigo de Matrices"
task :spec do
  sh "rspec -I. spec/spec_Matrices.rb"
end

desc "Ejecutando las pruebas para el codigo de Matrices con documentacion"
task :run do
  sh "rspec -I. spec/spec_Matrices.rb --format documentation"
end

desc "Ejecutando las pruebas para el codigo de Matrices con documentacion"
task :thtml do
  sh "rspec -I. spec/spec_Matrices.rb --format html"
end
