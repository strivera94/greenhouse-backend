class CartsController < ApplicationController
    
    # def new_order
    #     #create the cart
    #     cart = Cart.create(user_id: cart_params[:user_id] )
    #     #find the product to add
    #     product = Product.find(cart_params[:product_id])
    #     #get the quantity of product
    #     quantity = cart_params[:quantity]
    #     #find user buying the item
    #     user = User.find(cart_params[:user_id])

    #     cart_items = ProductInstance.create(cart_id: cart.id, product_id: cart_params[:product_id], 
    #         quantity: cart_params[:quantity], price: product.price * quantity
    #     )

    #     user.update(current_order: cart.id )
    #     cart_items = cart.cart_items
    # end
    
    def index
        carts = Cart.all
        render json: carts
    end

    def show
        cart = Cart.find[:id]
        render json: cart
    end

    def create
        cart = Cart.create(cart_params)
        render json:cart
    end

    def update
        cart = Cart.find(:id)
        cart.update(cart_params)
        render json: cart
    end

    private

    def cart_params
        params.permit(:completed, :id, :user_id)
    end

end
