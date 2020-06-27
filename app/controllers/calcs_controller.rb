class CalcsController < ApplicationController
  def show
    calc = params[:calc]
    @calc = "+" if calc == "addition"
    @calc = "-" if calc == "subtraction"
    @calc = "*" if calc == "multiplication"
    @calc = "/" if calc == "devision"
    @val1 = params[:val1].to_i
    @val2 = params[:val2].to_i
    
    @val = @val1 + @val2 if @calc == "+"
    @val = @val1 - @val2 if @calc == "-"
    @val = @val1 * @val2 if @calc == "*"
    @val = @val1.to_f / @val2.to_f if @calc == "/"
  end
end
