require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    @user_name = params[:name].reverse
    "Hello #{@user_name}!"
  end

  get "/square/:number" do
    num1 = params[:number].to_i
    num2 = num1 ** 2
    "#{num2}"
  end

  get "/say/:number/:phrase" do
    sentence = params[:phrase]
    num1 = params[:number].to_i
    num1.times {sentence}
  end
end