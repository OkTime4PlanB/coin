# frozen_string_literal: true

class SpendingsController < ApplicationController
  before_action :set_spending, only: %i[show edit update destroy]

  # GET /spendings
  # GET /spendings.json
  def index
    @user = User.find(params[:user_id])
    @spendings = Spending.all.reverse
  end

  # GET /spendings/1
  # GET /spendings/1.json
  def show
    @user = User.find(params[:user_id])
    @category = Category.all
  end

  # GET /spendings/new
  def new
    @user = User.find params[:user_id]
    @spending = Spending.new(user: @user)
    @category = Category.all
  end

  # GET /spendings/1/edit
  def edit; end

  # POST /spendings
  # POST /spendings.json
  def create
    @user = User.find params[:user_id]
    @spending = Spending.new(spending_params)
    @spending.user_id = current_user.id
    respond_to do |format|
      if @spending.save
        format.html { redirect_to user_spending_path(@spending.user, @spending), notice: 'Spending was successfully created.' }
        format.json { render :show, status: :created, location: @spending }
      else
        format.html { render :new }
        format.json { render json: @spending.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spendings/1
  # PATCH/PUT /spendings/1.json
  def update
    respond_to do |format|
      if @spending.update(spending_params)
        format.html { redirect_to user_spending_path(@spending.user, @spending), notice: 'Spending was successfully updated.' }
        format.json { render :show, status: :ok, location: @spending }
      else
        format.html { render :edit }
        format.json { render json: @spending.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spendings/1
  # DELETE /spendings/1.json
  def destroy
    @spending.destroy
    respond_to do |format|
      format.html { redirect_to user_spending_path(@spending.user, @spending), notice: 'Spending was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_spending
    @user = User.find params[:user_id]
    @spending = Spending.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def spending_params
    params.require(:spending).permit(:user_id, :category_id, :name, :price, :amount)
  end
end
