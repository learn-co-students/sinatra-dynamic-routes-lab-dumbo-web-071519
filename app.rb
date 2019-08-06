require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params['name']
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @squ = params['number'].to_i
    result = @squ * @squ
    "#{result}"
  end

  get '/say/:number/:phrase' do
    num = params['number'].to_i

    result = ""
    num.times {result += params['phrase']}
    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    result = "#{params['word1']} #{params['word2']} #{params['word3']} #{params['word4']} #{params['word5']}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params['number1'].to_i
    num2 = params['number2'].to_i
    result = nil
    if params['operation'] == "add"
      result = num1 + num2
    elsif params['operation'] == "subtract"
      result = num1 - num2
    elsif params['operation'] == "multiply"
      result = num1 * num2
    elsif params['operation'] == "divide"
      result = num1 / num2
    else
      "Operation Not Found"
    end
    result.to_s
  end
  
end