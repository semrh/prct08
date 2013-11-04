require "Matrices.rb"

describe Matriz do
	before :each do
		@m1 = Matriz.new(2,2,[[1,2],[3,4]])
		@m2 = Matriz.new(3,3,[[1,2,4],[6,5,8]])
		@m3 = Matriz.new(2,3,[[3,6,9],[2,8,4]])
		@m4 = Matriz.new(3,2,[[1,3],[2,4],[6,5]])
	end
	
	describe "Comprobamos el numero de... " do
		it " - Filas para una matriz 3x3" do
			@m2.nfil.should eq(3)
		end
		it " - Columnas de una matriz 3x3" do
			@m2.ncol.should eq(3)
		end
	end
	
	end
