class Print::StepsController < ApplicationController
  include Wicked::Wizard
steps *Print.form_steps
  
  def show
    @print = Print.find(params[:print_id])
    render_wizard
  end
  
  def update
    @print = Print.find(params[:print_id])
    @print.update(print_params(step))
    render_wizard @print
  end
  
  private
  
  def print_params(step)
    permitted_attributes = case step
                           when "attachment"
                             [:attachment]
                           when "finition"
                             [:materiau, :qualite, :livraison]
                           when "confirm"
                             [:address]
                           end
    
    params.require(:print).permit(permitted_attributes).merge(form_step: step)
  end
  
  end
  
  
  
  