class Matriz
	attr_accessor :nfil, :ncol, :pos
	
	def initialize(nfil, ncol, pos)
		@nfil = nfil
		@ncol = ncol
		@pos = Array.new(pos)
	end
	
	

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
	
end

if __FILE__ == $0
	m1 = Matriz.new(2,2,[[1,2],[3,4]])
	puts m1
end
