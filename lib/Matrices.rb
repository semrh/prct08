#! /usr/bin/ruby

#####################
#   PRACTICA 8      #
#####################

class Matriz
	
	# 
	attr_accessor :nfil, :ncol, :pos
	# attr_reader :nfil, :ncol, :pos
	
	# Metodo initilize de la clase
	def initialize(nfil, ncol, pos)
		@nfil = nfil
		@ncol = ncol
		@pos = Array.new(pos)
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
		if ((@nfil =! other.nfil) || (@ncol =! other.ncol))
			puts "No se pueden sumar las matrices"
		else
			i = 0
			j = 0
			elemento = Array.new
			for i in 0..@nfil do
				fila = Array.new
				for j in 0..@ncol do
					fila << @elemento[i][j] + other.elemento[i][j]
				end
				elemento << fila
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
end

