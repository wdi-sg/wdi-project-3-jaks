class TransactionsController < ApplicationController
  @@message = ""

  def index
    # arr = []
    # arr.push(gon.lat)
    # arr.push(gon.long)
    MqttJob.set(wait: 2.seconds).perform_later
    puts gon.lat = @@message.split(',').first
    puts gon.long = @@message.split(',').last
    gon.lat = 1.3521
    gon.long = 103.8198

    # @all_transactions = current_user.transaction
  end

  def new
    redirect_to new_order_path
    #build with the user
  end

  def create
    # @new_transaction = Transaction.new
##### to update based on Kenneth's input
    # @new_order = Order.new(filter_params)
    # @submitted_flight.save
    #  redirect_to transactions_index_path
  end


  # private
  # def filter_params
  #   params.require(:order).permit(:flavor, :price, :name)
  # end



end
