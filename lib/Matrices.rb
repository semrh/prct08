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
			elemento = Array.new(0)
			for i in 0...filas do
				fila = Array.new(0)
				for j in 0...colum do
					fila << pos[i][j] + other.pos[i][j]
				end
				elemento << fila
			end
		end
		Matriz.new(@nfil, @ncol, elemento)
	end
	
	# Metodo para restar dos matrices
	def -(other)
		if ((@nfil != other.nfil) || (@ncol != other.ncol))
			puts "No se pueden restar las matrices"
		else
			elemento = Array.new(0)
			for i in 0...filas do
				fila = Array.new(0)
				for j in 0...colum do
					fila << pos[i][j] - other.pos[i][j]
				end
				elemento << fila
			end
		end
		Matriz.new(@nfil, @ncol, elemento)
	end
	
	# Metodo para multiplicacion dos matrices
	def por(other)
		if ((@nfil != other.ncol) || (@ncol != other.nfil))
			puts "No se pueden multiplicarr las matrices"
		else
			elemento = Array.new(0)
			for i in 0...nfil do
				fila = Array.new(0)
				for j in 0...other.ncol do
					aux = 0
					for k in 0...ncol do
						aux += pos[i][k] * other.pos[k][j]
					end
					fila << aux
				end
				elemento << fila
			end
		end
		Matriz.new(@nfil, other.ncol, elemento)
	end
	
	# Metodo para multiplicar una matriz por un escalar
	def *(other)
		elemento = Array.new(0)
		for i in 0...filas do
			fila = Array.new(0)
			for j in 0...colum do
				fila << pos[i][j]*other
			end
			elemento << fila
		end
		Matriz.new(@nfil, @ncol, elemento)
	end
	
	# Metodo para hallar la traspuesta de una matriz
	def trasponer
		elemento = Array.new(0)
		for i in 0...colum do
			fila = Array.new(0)
			for j in 0...filas do
				fila << pos[j][i]
			end
			elemento << fila
		end
		Matriz.new(@ncol, @nfil, elemento)
	end
	
	
	# Metodo para convertir la matriz en un vector
	
end

if __FILE__ == $0
	m1 = Matriz.new(2,2,[[1,2],[3,4]])
	m2 = Matriz.new(2,2,[[1,2],[3,4]])
	puts m1+m2
end

