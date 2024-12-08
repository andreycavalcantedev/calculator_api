class ExpressionsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]   

  def index
    @expressions = Expression.all

    render json: @expressions
  end

  def show
    @expression = Expression.find(params[:id])

    render json: @expression
  end

  def create
    @expression = Expression.new(expression_params)

    if @expression.save
      render json: @expression, status: :ok
    else
      render json: @expression.errors, status: :unprocessable_entity
    end
  end

  def update
    @expression =  Expression.find(params[:id])

    if @expression.update(expression_params)
      render json: @expression, status: :ok
    else
      render json: @expression.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @expression = Expression.find(params[:id])
    @expression.destroy
  end

  private

  def expression_params
    params.permit(:expression, :resul)
  end
end
