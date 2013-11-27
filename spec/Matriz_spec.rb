require "prct11/Matriz.rb"
require "prct11/fraccion.rb"

describe Matriz do
 before :each do
    
	@matriz1 = Matriz.new([[1,2],[3,4]])
	@matriz2 = Matriz.new([[5, 6],[7,8]])
	@matriz3 = Matriz.new([[ Fraccion.new(1,2) , Fraccion.new(1,3)],[Fraccion.new(2,4), Fraccion.new(1,5)]])
    	@matriz4 = Matriz.new([[ Fraccion.new(1,2) , Fraccion.new(1,3)],[Fraccion.new(2,4), Fraccion.new(1,5)]])

  end 
	describe "Operaciones basicas" do
    		it "Suma de Matrices" do
        		(@matriz1 + @matriz2).should == Matriz.new([[6,8],[10,12]])
    		end
		it "Multiplicar matrices " do
			(@matriz1 * @matriz2).should == Matriz.new([[19,22],[43,50]])
        	end
	end

	describe "Matrices con fracciones" do
		it "Suma de fracciones" do
			(@matriz3 + @matriz4).should == Matriz.new([[ Fraccion.new(1,1) , Fraccion.new(2,3)],[Fraccion.new(1,1), Fraccion.new(2,5)]])
		end
		
		it "Multiplicar matrices " do
			(@matriz3 * @matriz4).should == Matriz.new([[ Fraccion.new(5,12) , Fraccion.new(7,60)],[Fraccion.new(7,20), Fraccion.new(31,300)]])
		end
		
	end

	describe "Maximos y minimos" do
		it "Maximos" do
			@matriz1.max.should == 4
		end
		it "Minimos" do
			@matriz1.min.should == 1
		end
	end
end
