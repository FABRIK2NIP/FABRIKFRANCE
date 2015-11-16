class ChargesController < ApplicationController

  def new
  end
  
  def create 
    #Amount in cent
  
    @amount = 50000000
    
    
    customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :card => params[:stripeToken]
    ) 
    
    charge = Stripe::Charge.create(
    :customer   => customer.id,
    :amount     => @amount,
    :description=> 'Rails Stripe customer',
    :currency   => 'usd',
    )
    redirect_to '/prints/78/steps/attachment'
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to @print

  end







end
