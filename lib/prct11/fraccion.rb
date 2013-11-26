class Fraccion
attr_reader :numerador, :denominador

	include Comparable

	def initialize (numerador,denominador)
                @numerador=numerador
                @denominador=denominador    
        end

	def gcd(u, v)
        	u, v = u.abs, v.abs
         	while (v!=0)
         	       u, v = v, u % v
      	    	end
       	   	u	
    	end

        def fraccion_Reducida
        	@mcd=gcd(@numerador,@denominador)
        	@numerador=@numerador/@mcd
       	 	@denominador=@denominador/@mcd
        	Fraccion.new(@numerador,@denominador)        
     	end
	
	def num
                num=@numerador
                num	
	end
        
        def den
                den=@denominador
                den
        end

	def to_s
   	 	"#{@numerador}/#{@denominador}"
    	end
    
   	def to_f
   	 	"#{Float(@numerador)/@denominador}"
    	end
    
	def absoluto
	   	 @numerador.abs
	   	 @denominador.abs
	   	 Fraccion.new(@numerador,@denominador)    
	end

    	def reciprocal
   		 @aux=@numerador
   		 @numerador=@denominador
   		 @denominador=@aux
   		 Fraccion.new(@numerador,@denominador)    
    	end
    
    	def opuesto
   		 @numerador=@numerador *(-1)
   		 Fraccion.new(@numerador,@denominador)    
    	end
	
	def +(obj2)
        	@den_aux=@denominador
        	@denominador=@denominador * obj2.denominador
        	@numerador=@numerador* obj2.denominador
        	@numerador=@numerador + (@den_aux * obj2.numerador)
        	fraccion_Reducida    
    	end	
    
   	def -(obj2)
        	@den_aux=@denominador
        	@denominador=@denominador * obj2.denominador
        	@numerador=@numerador* obj2.denominador
        	@numerador=@numerador - (@den_aux * obj2.numerador)
        	fraccion_Reducida
    	end
    
    	def /(obj2)
        	@numerador=@numerador*obj2.denominador        
        	@denominador=@denominador*obj2.numerador
        	fraccion_Reducida
    	end

    	def *(obj2)
        	@numerador=@numerador*obj2.numerador
        	@denominador=@denominador*obj2.denominador
        	fraccion_Reducida
    	end

    	def %(obj2)
        	@numerador=@numerador*obj2.denominador        
        	@denominador=@denominador*obj2.numerador
        	fraccion_Reducida
        	@resto=(@numerador % @denominador)
        	@resto
    	end
	
	def <=>(obj2)
        	
        	if Float(@numerador)/@denominador< Float(obj2.numerador)/obj2.denominador
           	 	return -1
        	elsif (@numerador == obj2.numerador && @denominador == obj2.denominador)
	   		 return 0
            	elsif Float(@numerador)/@denominador> Float(obj2.numerador)/obj2.denominador
			return 1
	   	end
    	end

end
