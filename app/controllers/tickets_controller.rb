class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]
  #before_action :set_combo_values, only: [:new, :edit]
  PAGE_SIZE = 10

  # GET /tickets
  # GET /tickets.json
  def index
    @page = (params[:page] || 0).to_i
    @tickets = Ticket.all

    if params[:keywords].present?
         @keywords = params[:keywords]
         @tickets = Ticket.where("lower(name) LIKE '%#{@keywords.downcase}%'").order(:name)
                        .offset(PAGE_SIZE * @page).limit(PAGE_SIZE)
         number_of_records = Ticket.where("lower(name) LIKE '%#{@keywords.downcase}%'").count
       else
         @brands = Ticket.order(:name).offset(PAGE_SIZE * @page).limit(PAGE_SIZE)
         number_of_records = Ticket.count
       end
       @number_of_pages = (number_of_records % PAGE_SIZE) == 0 ?
                           number_of_records / PAGE_SIZE - 1 : number_of_records / PAGE_SIZE

  end

  # GET /tickets/1
  # GET /tickets/1.json
  def show

  end

  # GET /tickets/new
  def new
    @ticket = Ticket.new
  end

  # GET /tickets/1/edit
  def edit
  end

  # POST /tickets
  # POST /tickets.json
  def create
  
    @ticket = Ticket.new(ticket_params)

    respond_to do |format|
      if @ticket.save
        format.html { redirect_to @ticket, notice: 'Ticket was successfully created.' }
        format.json { render :show, status: :created, location: @ticket }
      else
        format.html { render :new }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tickets/1
  # PATCH/PUT /tickets/1.json
  def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html { redirect_to @ticket, notice: 'Ticket was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket }
      else
        format.html { render :edit }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tickets/1
  # DELETE /tickets/1.json
  def destroy
    @ticket.destroy
    respond_to do |format|
      format.html { redirect_to tickets_url, notice: 'Ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_params
      params.require(:ticket).permit(:license_id, :code, :totalvt, :netov, :gastov, :choferv)
    end
end
