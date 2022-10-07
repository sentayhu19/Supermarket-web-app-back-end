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
end