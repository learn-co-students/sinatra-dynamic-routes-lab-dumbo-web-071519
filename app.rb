require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    user_name = params[:name]
    rev_name = user_name.reverse
    "hello #{rev_name}"
    end

  get '/square/:number' do
    num = params[:number]
    (num.to_i ** 2).to_s
    
  end

  get '/say/:number/:phrase' do
    final_str = ""
    (params[:number].to_i).times do
      final_str += "#{params[:phrase]}"
    end
    final_str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
   "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case operation
    when "add"
      ans = num1 + num2
    when "subtract"
      ans = num1 - num2
    when "divide"
      ans = num1 / num2
    when "multiply"
      ans = num1 * num2
    else
      "Unable to perform this operation."
    end
    ans.to_s
  end


end