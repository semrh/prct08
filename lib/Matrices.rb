#! /usr/bin/ruby

#####################
#   PRACTICA 8      #
#####################

class Matriz
	
	# 
	#attr_accessor :nfil, :ncol, :pos
	attr_reader :nfil, :ncol, :pos
	
	# Metodo initilize de la clase
	def initialize(nfil, ncol, pos)
		@nfil = nfil
		puts @nfil
		@ncol = ncol
		@pos = Array.new(pos)
	end
	
	# Getter de nfil
	def filas
		@nfil
	end
	
	# Getter de ncol
	def colum
		@ncol
	end
	
	# Metodo para convertir la matriz a string
	def to_s
		aux = ""
		@nfil.times do |i|
			@ncol.times do |j|
				aux << "#{pos[i][j]}\t"
			end
			aux << "\n"
		end
		aux
	end
	
	# Metodo para sumar dos matrices
	def +(other)
		if ((@nfil != other.nfil) || (@ncol != other.ncol))
			puts "No se pueden sumar las matrices"
		else
			puts self.nfil
			elemento = Array.new(filas, Array.new(colum))
			for i in 0...filas do
				puts i
				for j in 0...colum do
					elemento[i][j] = @pos[i][j] + other.pos[i][j]
				end
			end
		end
		Matriz.new(@nfil, @ncol, elemento)
	end
	
	# Metodo para restar dos matrices
	
	
	# Metodo para multiplicacion dos matrices
	
	
	# Metodo para multiplicar una matriz por un escalar
	
	
	# Metodo para hallar la traspuesta de una matriz
	
	
	# Metodo para hallar la inversa de una matriz
	
	
	# Metodo para hallar el determinante de una matriz --> ¡OJO!
	
	
	# Metodo para convertir la matriz en un vector
	
end

if __FILE__ == $0
	m1 = Matriz.new(2,2,[[1,2],[3,4]])
	m2 = Matriz.new(2,2,[[1,2],[3,4]])
	puts m1+m2
end

