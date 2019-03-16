class PaymentsController < ApplicationController
    def new
		 if current_cart.cart_products == nil?

	    	redirect_to '/', :notice => 'Your cart is empty'
	     	return
		  end
        @payment = Payment.new
	end

	def create
		@payment = Payment.new(payment_params)
        Stripe.api_key = "sk_test_Hm0ywtd94a4e27SHOfzVJLpZ"
        @cart = current_cart

         debugger
         @amount = @cart.total_price.to_i * 100

          token = params[:stripeToken]

          # Create a Customer
          customer = Stripe::Customer.create(

            :description => params[:email], 
            :card => token, 

          )


      charge = Stripe::Charge.create(

        :customer    => customer.id,
        :amount => @amount, # amount in cents, again
        :currency => 'usd',
       # :card => token,
        :description => params[:email]
      )
        if @payment.save
            @payment.add_line_items_from_cart(current_cart)
            Cart.destroy(session[:cart_id])
            session[:cart_id] = nil
            redirect_to root_path
        else
            render 'new'
        end
	end

    private
    def payment_params
      params.require(:payment).permit(:name, :phone, :address, :pay_type)
    end
end
