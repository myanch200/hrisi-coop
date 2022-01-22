class TransactionsController < ApplicationController
    before_action :set_entry, only: %i[ show edit update destroy ]
    before_action :authenticate_user!

    def index
        @transactions = Transaction.by_current_user(current_user)
    end

    def new
        @transaction = Transaction.new
    end

    def create
        @transaction = Transaction.new(transaction_params)
        @transaction.user_id = current_user.id
        respond_to do |format|
            if @transaction.save
              format.html { redirect_to root_path, notice: "Transaction was successfully created" }
              format.json { render :show, status: :created, location: @transaction }
            else
              format.html { render :new, status: :unprocessable_entity }
              format.json { render json: @transaction.errors, status: :unprocessable_entity }
            end
        end
    end

    def show
    end

    def edit
    end

    def update

        respond_to do |format|
            if @transaction.update(transaction_params)
                format.html { redirect_to root_path, notice: "Transaction was successfully updated." }
                format.json { render :show, status: :ok, location: @transaction }
            else
                format.html { render :edit, status: :unprocessable_entity }
                format.json { render json: @transaction.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @transaction.destroy
        respond_to do |format|
            format.html { redirect_to root_path, notice: "Transaction was successfully destroyed." }
            format.json { head :no_content }
        end
    end

    private
      
        def set_entry
            @transaction = Transaction.find(params[:id])
        end

        def transaction_params
            params.require(:transaction).permit( :name, :amount, :transaction_type, :note, :category)
        end

end