class PrintsController < ApplicationController
  before_action :set_print, only: [:show, :edit, :update, :destroy]

  # GET /prints
  # GET /prints.json
  def index
    # Normally you'd have more complex requirements about
    # when not to show rows, but we don't show any records that don't have a name
    @prints = Print.all
   
  end

  # GET /prints/1
  # GET /prints/1.json
  def show
  end

  # GET /prints/new
  def new
    @print = Print.new
  end

  # POST /prints
  # POST /prints.json
  def create
    @print = Print.new
    @print.save(validate: false)
    redirect_to print_step_path(@print, Print.form_steps.first)
  end

  # DELETE /prints/1
  # DELETE /prints/1.json
  def destroy
    @print.destroy
    respond_to do |format|
      format.html { redirect_to prints_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_print
      @print = Print.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def print_params
      params.require(:print).permit(:attachment, :materiau, :qualite, :livraison, :address)
    end
end
