class PagesController < ApplicationController
  
  def landing
    if current_user
      @transaction = Transaction.new
      @transactions = Transaction.by_current_user(current_user)
    end
  end
end