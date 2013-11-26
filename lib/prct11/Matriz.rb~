#!/usr/bin/ruby

require "prct11/fraccion.rb"

class Matriz

	attr_reader :filas,:columnas

	def initialize(matriz)
	
		@filas = matriz.length #filas
       	 	@columnas = matriz[0].length #Columnas
		#Creamos la matriz
           	@matriz = Array.new(@filas){Array.new(@columnas)}
           	#Cargamos la matriz
			for i in 0...@filas
	                       for j in 0...@columnas
		                  @matriz[i][j] = matriz[i][j]
	                       end
			end
        end

	
	def +(m2)
		result = Array.new(@filas){Array.new(@columnas)}
		
		for i in 0...@filas
		        for j in 0...@columnas
		                result[i][j] = @matriz[i][j] + m2[i][j]
		        end
		end
		return Matriz.new(result)
	end
       
	
end

class Mdensa < Matriz
	
	def initialize
        
	end



end


class Mdispersa < Matriz

	def initialize
               
	end

end
