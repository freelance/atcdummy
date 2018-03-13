class SpreadsheetDetailsController < ApplicationController
  before_action :set_spreadsheet_detail, only: [:show, :edit, :update, :destroy]

  # GET /spreadsheet_details
  # GET /spreadsheet_details.json
  def index
    @spreadsheet_details = SpreadsheetDetail.all
  end

  # GET /spreadsheet_details/1
  # GET /spreadsheet_details/1.json
  def show
  end

  # GET /spreadsheet_details/new
  def new
    @spreadsheet_detail = SpreadsheetDetail.new
  end

  # GET /spreadsheet_details/1/edit
  def edit
  end

  # POST /spreadsheet_details
  # POST /spreadsheet_details.json
  def create
    @spreadsheet_detail = SpreadsheetDetail.new(spreadsheet_detail_params)

    respond_to do |format|
      if @spreadsheet_detail.save
        format.html { redirect_to @spreadsheet_detail, notice: 'Spreadsheet detail was successfully created.' }
        format.json { render :show, status: :created, location: @spreadsheet_detail }
      else
        format.html { render :new }
        format.json { render json: @spreadsheet_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spreadsheet_details/1
  # PATCH/PUT /spreadsheet_details/1.json
  def update
    respond_to do |format|
      if @spreadsheet_detail.update(spreadsheet_detail_params)
        format.html { redirect_to @spreadsheet_detail, notice: 'Spreadsheet detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @spreadsheet_detail }
      else
        format.html { render :edit }
        format.json { render json: @spreadsheet_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spreadsheet_details/1
  # DELETE /spreadsheet_details/1.json
  def destroy
    @spreadsheet_detail.destroy
    respond_to do |format|
      format.html { redirect_to spreadsheet_details_url, notice: 'Spreadsheet detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spreadsheet_detail
      @spreadsheet_detail = SpreadsheetDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spreadsheet_detail_params
      params.require(:spreadsheet_detail).permit(:spreadsheet_id, :totalv, :netov, :gastov, :choferv)
    end
end
