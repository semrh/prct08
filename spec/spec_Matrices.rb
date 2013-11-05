require "Matrices.rb"

describe Matriz do
	before :each do
		@m1 = Matriz.new(2,2,[[1,2],[3,4]])
		@m2 = Matriz.new(3,3,[[1,2,4],[6,5,8]])
		@m3 = Matriz.new(2,3,[[3,6,9],[2,8,4]])
		@m4 = Matriz.new(3,2,[[1,3],[2,4],[6,5]])
		@m5 = Matriz.new(2,2,[[5,3],[2,3]])
	end
	
	# Comprobacion de que se crea bien la matriz
	describe "Comprobamos el numero de... " do
		it " - Filas para una matriz 3x3" do
			@m2.nfil.should eq(3)
		end
		it " - Columnas de una matriz 3x3" do
			@m2.ncol.should eq(3)
		end
	end
	
	# Comprobacion de que se convierte bien la matriz a un string
	describe "Comprobamos el metodo de conversion a string" do
		it "" do
			@m1.to_s.should eq("1\t2\t\n3\t4\t\n")
		end
	end
	
	# Comprobacion de las operaciones de suma y resta de matrices
	describe "Comprobamos la suma y resta de matrices" do
		it " - Suma" do
			@aux = Matriz.new(2,2,[[6,5],[5,7]])
			@m1+@m2.should eq(@aux)
		end
		it " - Resta" do
			
		end
	end
	
	end
