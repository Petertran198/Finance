class StocksController < ApplicationController


def search
   if params[:stock].present? 
      @stock = Stock.new_from_lookup(params[:stock])
        if @stock 
          render 'users/my_portfolio' #It is saying render this data on the users/my_portfolio view page 
        else @stock == nil
          flash[:danger] = "That is an incorrect stock" 
          redirect_to my_portfolio_path
        end 

   else
     flash[:danger] = "Please Enter A Stock" 
     redirect_to my_portfolio_path
   end
end


end