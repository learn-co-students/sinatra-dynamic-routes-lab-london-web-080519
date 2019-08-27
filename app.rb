require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    num = params[:number].to_i
    (num**2).to_s
  end
  
  get '/say/:number/:phrase' do
    params[:phrase] * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    # str = params.each {|key, value| "".concat("#{value} ")}
    params.map { |key, value| value }.join(" ") + "."
    # str = str.chomp += "."
    # str
  end

  get '/:operation/:number1/:number2' do 
    num1, num2 = params[:number1].to_i, params[:number2].to_i
    result = case params[:operation]
    when "add"
      num1 + num2
    when "subtract"
      num1 - num2
    when "multiply"
      num1 * num2
    when "divide"
      num1 / num2
    end
    result.to_s
  end

end