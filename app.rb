require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @reverse_name = params[:name]
    @reverse_name.reverse
  end

  get '/square/:number' do
    @num = params[:number]
    @square = @num.to_i * @num.to_i
    @square.to_s
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @phrase = params[:phrase]
    a = []
    @num.to_i.times do
      a << @phrase
      #binding.pry
    end
    a.each do |p|
      puts p 
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @one = params[:word1]
    @two = params[:word2]
    @three = params[:word3]
    @four = params[:word4]
    @five = params[:word5]
    string = ""
    a = [@one, " #{@two}", " #{@three}", " #{@four}", " #{@five}."]
    a.each do |word|
      string += word
    end
    string
    #binding.pry
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    if @op == "add"
      a = @num1.to_i + @num2.to_i
      a.to_s
    elsif @op == "subtract"
      s = @num1.to_i - @num2.to_i
      s.to_s
    elsif @op == "multiply"
      m = @num1.to_i * @num2.to_i
      m.to_s
    elsif @op == "divide"
      d = @num1.to_i / @num2.to_i
      d.to_s
    end
  end

end