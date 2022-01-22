class PagesController < ApplicationController
  def landing
    @transaction = Transaction.new
    @transactions = Transaction.by_current_user(current_user)
  end
end