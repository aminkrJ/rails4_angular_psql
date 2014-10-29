class PanesController < ApplicationController
  before_action :set_pane, only: [:show, :edit, :update, :destroy]

  # GET /panes
  # GET /panes.json
  def index
    @panes = Pane.all
  end

  # GET /panes/1
  # GET /panes/1.json
  def show
  end

  # GET /panes/new
  def new
    @pane = Pane.new
  end

  # GET /panes/1/edit
  def edit
  end

  # POST /panes
  # POST /panes.json
  def create
    @pane = Pane.new(pane_params)

    respond_to do |format|
      if @pane.save
        format.html { redirect_to @pane, notice: 'Pane was successfully created.' }
        format.json { render :show, status: :created, location: @pane }
      else
        format.html { render :new }
        format.json { render json: @pane.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /panes/1
  # PATCH/PUT /panes/1.json
  def update
    respond_to do |format|
      if @pane.update(pane_params)
        format.html { redirect_to @pane, notice: 'Pane was successfully updated.' }
        format.json { render :show, status: :ok, location: @pane }
      else
        format.html { render :edit }
        format.json { render json: @pane.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /panes/1
  # DELETE /panes/1.json
  def destroy
    @pane.destroy
    respond_to do |format|
      format.html { redirect_to panes_url, notice: 'Pane was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pane
      @pane = Pane.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pane_params
      params.require(:pane).permit(:name, :settings)
    end
end
