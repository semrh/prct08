require "Matrices.rb"
require "fraccion.rb"

describe Matriz do
	before :each do
		@m1 = Matriz.new(2,2,[[1,2],[3,4]])
		@m2 = Matriz.new(3,3,[[1,2,4],[6,5,8],[2,5,3]])
		@m3 = Matriz.new(2,3,[[3,6,9],[2,8,4]])
		@m4 = Matriz.new(3,2,[[1,3],[2,4],[6,5]])
		@m5 = Matriz.new(2,2,[[5,3],[2,3]])
		@f1 = Fraccion.new(1,2)
		@f2 = Fraccion.new(3,2)
		@f3 = Fraccion.new(5,2)
		@mf1 = Matriz.new(2,2,[[@f1,@f2],[@f3,@f1]])
		@mf2 = Matriz.new(2,2,[[@f1,@f2],[@f1,@f2]])
	end
	
	# Comprobacion de que se crea bien la matriz
	describe "Comprobamos el numero de...\n" do
		it " - Filas para una matriz 3x3\n" do
			@m2.nfil.should eq(3)
		end
		it " - Columnas de una matriz 3x3\n" do
			@m2.ncol.should eq(3)
		end
		it "Acceso al elemento [0][0]" do
			@m1.pos[0][0].should eq(1)
		end
		it "Acceso al elemento [0][1]" do
			@m1.pos[0][1].should eq(2)
		end
		it "Acceso al elemento [1][0]" do
			@m1.pos[1][0].should eq(3)
		end
		it "Acceso al elemento [1][1]" do
			@m1.pos[1][1].should eq(4)
		end
	end
	
	# Comprobacion de que se convierte bien la matriz a un string
	describe "Comprobamos el metodo de conversion a string\n" do
		it "\n" do
			@m1.to_s.should eq("1\t2\t\n3\t4\t\n")
		end
	end
	
	# Comprobacion de las operaciones de suma y resta de matrices
	describe "Comprobamos la suma y resta de matrices\n" do
		it " - Suma\n" do
			@aux = Matriz.new(2,2,[[6,5],[5,7]])
			@aux2 = @m1+@m5
			@aux2.to_s.should eq(@aux.to_s)
		end
		it " - Resta\n" do
			@aux = Matriz.new(2,2,[[4,1],[-1,-1]])
			@aux2 = @m5-@m1
			@aux2.to_s.should eq(@aux.to_s)
		end
	end
	
	# Comprobacion de la multiplicacion
	describe "Comprobamos la multiplicacion" do
		it " Multiplicacion de dos matrices" do
			@aux = Matriz.new(2,2,[[69,78],[42,58]])
			@aux2 = @m3.por(@m4)
			@aux2.to_s.should eq(@aux.to_s)
		end
		it " Multiplicacion por un escalar" do
			@aux = Matriz.new(3,2,[[2,6],[4,8],[12,10]])
			@aux2 = @m4*(2)
			@aux2.to_s.should eq(@aux.to_s)
		end
	end
	
	# Comprobacion de la traspuesta
	describe "Comprobamos la funciones trasponer y vectorizar" do
		it "Traspuesta de una matriz" do
			@aux = Matriz.new(3,3,[[1,6,2],[2,5,5],[4,8,3]])
			@m2.trasponer.to_s.should eq(@aux.to_s)
		end
		it "Comprovamos la funcion vectorizar" do
			@aux = Array.new([1,2,4,6,5,8,2,5,3])
			@m2.vectorizar.should eq(@aux)
		end
	end
	
	# Modificacion de la practica
	describe "Comprobamos que se guardan los datos" do
		it "Acceso al elemento [0][0]" do
			@mf1.pos[0][0].should eq(@f1)
		end
	end
	describe "Operaciones con matrices con fracciones" do
		it "Comprobamos que realiza bien la traspuesta" do
			@aux = Matriz.new(2,2,[[@f1,@f3],[@f2,@f1]])
			@mf1.trasponer.to_s.should eq(@aux.to_s)
		end
		it "Comprobamos la suma" do
			@aux = Matriz.new(2,2,[[@f1,@f1],[@f1,@f1]])
			@af1 = Fraccion.new(1,1)
			@af2 = Fraccion.new(2,1)
			@af3 = Fraccion.new(3,1)
			@aux3 = Matriz.new(2,2,[[@af1,@af2],[@af3,@af1]])
			@aux2 = @mf1+@aux
			@aux2.to_s.should eq(@aux3.to_s)
		end
		it "Comprobamos la multiplicacion" do
			@aux = Matriz.new(2,2,[[@f1,@f1],[@f1,@f1]])
			@aux2 = @aux.porf(@aux)
			@aux3 = Matriz.new(2,2,[[@f1,@f1],[@f1,@f1]])
			@aux2.to_s.should eq(@aux3.to_s)
		end
	end
	
end
