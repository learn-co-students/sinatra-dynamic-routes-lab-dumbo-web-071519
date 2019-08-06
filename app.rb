require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do 
     @square = ((params[:number].to_i)**2).to_s
    
  end
  get '/say/:number/:phrase' do
      @phrase = params[:phrase] *(params[:number].to_i)
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end

  get '/:operation/:number1/:number2' do
      @operation = params[:operation]
      @num1 = params[:number1].to_i
      @num2 = params[:number2].to_i
      case @operation
      when "add"
        return (@num1 + @num2).to_s
      when "multiply"
        return (@num1 * @num2).to_s
      when "subtract"
        return (@num1 - @num2).to_s
      when "divide"
        return (@num1/@num2).to_s
      end

  end
    
end