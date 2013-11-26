require "prct11/Matriz.rb"
require "prct11/fraccion.rb"

describe Matriz do
 before :each do
    
	@matriz1 = Matriz.new([[1,2],[3,4]])
	@matriz2 = Matriz.new([[5, 6],[7,8]])

  end 
	describe "Operaciones basicas" do
    		it "Suma de Matrices" do
        		(@matriz1 + @matriz2).should == Matriz.new([[6,8],[10,12]])
    		end
		it "Multiplicar matrices " do
			(@matriz1 * @matriz2).should == Matriz.new([[19,22],[43,50]])
        	end
	end
end
