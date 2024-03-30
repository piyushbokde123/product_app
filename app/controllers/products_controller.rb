class ProductsController < ApplicationController
  
  def create
    @product = Product.new(product_params)

    if @product.save
       render json: { message: 'Product created successfully' }, status: :created
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
       render json: { message: 'Product updated successfully' }, status: :created
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
    def product_params
      params.require(:product).permit(:name, :price, :company, :quantity)
    end
end
