require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @i = params[:number].to_i
    "#{@i * @i}"
  end

  get '/say/:number/:phrase' do
    params[:phrase] * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = params.map {|key, value| value}
    @words.join(' ') + '.'
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if params[:operation] == "add"
      "#{@num1 + @num2}"
    elsif params[:operation] == 'divide'
      "#{@num1 / @num2}"
    elsif params[:operation] == 'subtract'
      "#{@num1 - @num2}"
    elsif params[:operation] == 'multiply'
      "#{@num1 * @num2}"
    end
  end

end
