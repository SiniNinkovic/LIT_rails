class LeadsController < ApplicationController

  def create
    @lead = Lead.new lead_params
    if @lead.save
      redirect_to root_path, notice: "Saved"
    else
      redirect_to root_path, alert: "Not Saved"
    end
  end

private
  def lead_params
    params.require(:lead).permit(:first_name, :last_name, :email)
  end

end
