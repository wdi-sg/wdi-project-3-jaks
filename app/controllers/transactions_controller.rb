class TransactionsController < ApplicationController

  def index
    #  need to change to last known
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
  # to move this to relevant search bar view/controller
    def location_search
      # the below is hard coded, but to search from database for all suppliers.
      # gon.suppliers = Supplier.all
      gon.suppliers = [
        {id: 1, name: 'test', lat:-34.397, lng:150.644},
        {id: 2, name: 'test2', lat: 1.3521, lng: 103.8198},
        {id: 3, name: 'test3', lat: 1.30838, lng: 103.83264},
        {id: 4, name: 'test4', lat: 1.30838, lng: 103.83264},
        {id: 5, name: 'test5', lat: 1.30838, lng: 103.83264},
        {id: 6, name: 'test6', lat: 1.30838, lng: 103.83264},
        {id: 7, name: 'test7', lat: 1.30838, lng: 103.83264}]

    end
    def field_search
      # the below is hard coded, but to search from database for all suppliers.
      # gon.suppliers = Supplier.all

    end
    def search

    end
  # private
  # def filter_params
  #   params.require(:order).permit(:flavor, :price, :name)
  # end

end
