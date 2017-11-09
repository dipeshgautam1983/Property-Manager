class ApplicationFeesController < ApplicationController
  before_action :set_application_fee, only: [:show, :edit, :update, :destroy]

  # GET /application_fees
  # GET /application_fees.json
  def index
    @application_fees = ApplicationFee.all
  end

  # GET /application_fees/1
  # GET /application_fees/1.json
  def show
  end

  # GET /application_fees/new
  def new
    @application_fee = ApplicationFee.new
  end

  # GET /application_fees/1/edit
  def edit
  end

  # POST /application_fees
  # POST /application_fees.json
  def create
    @application_fee = ApplicationFee.new(application_fee_params)

    respond_to do |format|
      if @application_fee.save
        format.html { redirect_to @application_fee, notice: 'Application fee was successfully created.' }
        format.json { render :show, status: :created, location: @application_fee }
      else
        format.html { render :new }
        format.json { render json: @application_fee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /application_fees/1
  # PATCH/PUT /application_fees/1.json
  def update
    respond_to do |format|
      if @application_fee.update(application_fee_params)
        format.html { redirect_to @application_fee, notice: 'Application fee was successfully updated.' }
        format.json { render :show, status: :ok, location: @application_fee }
      else
        format.html { render :edit }
        format.json { render json: @application_fee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /application_fees/1
  # DELETE /application_fees/1.json
  def destroy
    @application_fee.destroy
    respond_to do |format|
      format.html { redirect_to application_fees_url, notice: 'Application fee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application_fee
      @application_fee = ApplicationFee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def application_fee_params
      params.fetch(:application_fee, {})
    end
end
