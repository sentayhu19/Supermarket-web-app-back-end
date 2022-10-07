class V1::Api::ProductsController < ApplicationController
    def index
        @products = Product.all
        if @products
            render json: @products
        else
            render json: {error: "No products found"}
        end
    end
    def new
        @product = Product.new
    end
    def create
        product = Product.new(product_params)
        if product.save
            render json: product
        else
            render json: {error: "Product not saved"}
        end
    def show
        @product = Product.find(params[:id])
        if @product
            render json: @product
        else
            render json: {error: "Product not found"}
        end
    end
    def edit
        @product = Product.find(params[:id])
    end
    def update
        product = Product.find(params[:id])
        if product.update(product_params)
            render json: product
        else
            render json: {error: "Product not updated"}
        end
    end
    def destroy
        product = Product.find(params[:id])
        if product.destroy
            render json: {message: "Product deleted"}
        else
            render json: {error: "Product not deleted"}
        end
    end
    def product_params
        params.require(:product).permit(:name, :price, :description)
    end
end