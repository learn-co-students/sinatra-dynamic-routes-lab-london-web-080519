require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num**2}"
  end

  get '/say/:number/:phrase' do
    @num, @phrase = params[:number].to_i, params[:phrase]
    @phrase*@num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1, @w2, @w3, @w4, @w5 = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get '/:operation/:number1/:number2' do
    @operation, @num1, @num2 = params[:operation], params[:number1].to_i, params[:number2].to_i
    if @operation == "add"
      "#{@num1+@num2}"
    elsif @operation == "subtract"
      "#{@num1-@num2}"
    elsif @operation == "multiply"
      "#{@num1*@num2}"
    elsif @operation == "divide"
      "#{@num1/@num2}"
    else
      "Cannot perform this operation"
    end
  end



end