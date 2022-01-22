class BalancesController < ApplicationController
    def new
        @balance = Balance.new
    end

    def create
        @balance = Balance.new(balance_params)
        @balance.user_id = current_user.id
        if @balance.save
            redirect_to root_path, notice: "Balance was successfully created."
        else
            render :new, status: :unprocessable_entity
        end
    end
end
