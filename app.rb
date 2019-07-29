require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    params[:name].reverse
  end

 get "/square/:number" do
   @number = params[:number].to_i
    "#{@number*@number}"

end
 get "/say/:number/:phrase" do
   @number = params[:number].to_i
   @phrase = params[:phrase]
   "#{@phrase}\n"*@number
 end

get "/say/:word1/:word2/:word3/:word4/:word5" do
      @word1 = params [:word1]
      @word2 = params [:word2]
      @word3 = params [:word3]
      @word4 = params [:word4]
      @word5 = params [:word5]
      "params [:word1] params [:word2] params [:word3] params [:word4] params [:word5]."
end

get "/:operation/:number1/:number2" do
  @number1 = params[:number1].to_i
  @number2 =params[:number2].to_i
  @operation = params[:operation]
  "#{@number1} #{@operation} #{@number2}"

end
end
