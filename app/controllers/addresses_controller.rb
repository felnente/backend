class AddressesController < ApplicationController
  include Paginable
  before_action :set_address, only: %i[ show update destroy ]

  # GET /addresses
  def index
    @addresses = Address.page(current_page).per(per_page)

    render json: @addresses, meta: meta_attributes(@addresses), adapter: :json
  end

  # GET /addresses/1
  def show
    render json: @address
  end

  # POST /addresses
  def create
    @address = Address.new(address_params)
    
    result = generic_create(@address)

    render json: result[0][:collection], status: result[0][:status]
  end

  # PATCH/PUT /addresses/1
  def update
    generic_update(@address, address_params)
  end

  # DELETE /addresses/1
  def destroy
    @address.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @address = Address.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def address_params
      params.fetch(:address, {}).permit(:cep, :street, :number, :district, :city, :state, :contact_id)
    end
end
