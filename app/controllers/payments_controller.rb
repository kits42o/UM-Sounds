class PaymentsController < ApplicationController
  require 'active_merchant' 
  include ActiveMerchant::Billing
  def index
  end
	
  def checkout
	setup_response = gateway.setup_purchase(5000,
		:ip                => request.remote_ip,
		:return_url        => url_for(:controller => 'payments', :action => 'confirm', :only_path => false),
		:cancel_return_url => url_for(:controller => 'payments', :action => 'index', :only_path => false)
	  )
	  redirect_to gateway.redirect_url_for(setup_response.token)
  end
	
  def confirm
	  redirect_to :action => 'index' unless params[:token]
	  
	  details_response = gateway.details_for(params[:token])
	  
	  if !details_response.success?
		@message = details_response.message
		render :action => 'error'
		return
	  end
		
	  @address = details_response.address
  end

  def complete	
  end
	
	private
	def gateway
	  @gateway ||= PaypalExpressGateway.new(
		:login => 'chris_api1.devoodle.net',
		:password => 'R9AMQ9BUBWWKWB3M',
		:signature => 'AFcWxV21C7fd0v3bYYYRCpSSRl31AQuhkj4n7UFAPtAGPBFNzZfOfBE1'
	  )
	end
end
