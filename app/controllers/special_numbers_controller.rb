class SpecialNumbersController < ApplicationController
  before_action :set_special_number, only: [:show, :edit, :update, :destroy]

  # GET /special_numbers
  # GET /special_numbers.json
  def index
    @special_numbers = SpecialNumber.all
  end

  # GET /special_numbers/1
  # GET /special_numbers/1.json
  def show
  end

  # GET /special_numbers/new
  def new
    @special_number = SpecialNumber.new
  end

  # GET /special_numbers/1/edit
  def edit
  end

  # POST /special_numbers
  # POST /special_numbers.json
  def create
    @special_number = SpecialNumber.new(special_number_params)

    respond_to do |format|
      if @special_number.save
        format.html { redirect_to @special_number, notice: 'Special number was successfully created.' }
        format.json { render :show, status: :created, location: @special_number }
      else
        format.html { render :new }
        format.json { render json: @special_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /special_numbers/1
  # PATCH/PUT /special_numbers/1.json
  def update
    respond_to do |format|
      if @special_number.update(special_number_params)
        format.html { redirect_to @special_number, notice: 'Special number was successfully updated.' }
        format.json { render :show, status: :ok, location: @special_number }
      else
        format.html { render :edit }
        format.json { render json: @special_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /special_numbers/1
  # DELETE /special_numbers/1.json
  def destroy
    @special_number.destroy
    respond_to do |format|
      format.html { redirect_to special_numbers_url, notice: 'Special number was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_special_number
      @special_number = SpecialNumber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def special_number_params
      params.require(:special_number).permit(:special)
    end
end




