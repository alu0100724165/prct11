#!/usr/bin/ruby

require "prct11/fraccion.rb"

class Matriz

	attr_reader :filas,:columnas, :matriz

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

	def *(m2)
		
		dimensiones=[[@filas, @columnas],[m2.filas, m2.columnas]]
		filas_final = dimensiones[0][0]
		columnas_final = dimensiones[1][1]
		multi = Array.new(filas_final){Array.new(columnas_final)}
		for i in 0...@filas
		        for j in 0...m2.columnas
		                temp = Array.new(dimensiones[0][0])
		                val1 = @matriz[i][0]
		                val2 = m2.[](0,j)
		                #temp[0] = @matriz[i][0] * m2[0][j];
		                temp[0] = val1 * val2;
		                for k in 1...@columnas
		                        val1 = @matriz[i][k]
		                        val2 = m2.[](k,j)
		                        temp2 = val1 * val2
		                        temp[k] = temp2
		                end
		                multi[i][j] = temp.reduce(:+)
		        end
		end
		return Matriz.new(multi)
	end
	
	def +(m2)
		suma = Array.new(@filas){Array.new(@columnas)}
		
		for i in 0...@filas
		        for j in 0...@columnas
		                suma[i][j] = @matriz[i][j] + m2.matriz[i][j]
		        end
		end
		return Matriz.new(suma)
	end
       
	def == (other)
		result = true
		for i in 0...@filas
		        for j in 0...@columnas
		                if (self.[](i,j) == other.[](i,j)) && result==true
					result=true
				else
					result=false
				end
		        end
		end
		result
	end 

	def []=(i,j,x)
	   	@matriz[i][j] = x
	end

	def [](i,j)
	  	@matriz[i][j]
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
