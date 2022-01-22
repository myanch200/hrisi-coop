class ExpensesController < ApplicationController
    def new
        @expense = Expense.new
    end

    def create
        @expense = Expense.new(expense_params)
        @expense.user_id = current_user.id
        if @expense.save
            redirect_to root_path, notice: "Expense was successfully created."
        else
            render :new, status: :unprocessable_entity
        end
    end
    private
    def expense_params
        params.require(:expense).permit(:date, :amount, :description)
    end
end 
