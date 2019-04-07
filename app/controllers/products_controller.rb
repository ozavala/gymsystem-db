class ProductsController < ApplicationController
before_action :set_product, only: [:edit, :update, :show]

  def index
    @products = Product.all
  end

  def show
  end

  def edit
       @categories = Category.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = 'Product succesfully created'
      redirect_to products_path
    else
      flash[:notice] = 'Product was not created'
      render 'edit'
    end
  end

  def update
    if @product.update(product_params)
      flash[:notice] = "Product succesfully updated"
      redirect_to products_path
    else
      flash[:notice] = 'Product was not updated'
      render 'edit'
    end
  end
  private

  # def product_params
  #   params.require(:product).permit(:id, :name, :price, :category_ids, categories_attributes: [:id, :name, :category_ids], categorizations_attributes: [:id, :product_id, :category_id, :category_ids])
  # end

  def product_params
    params.require(:product).permit(:id, :name, :price, { category_ids: [] })
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
