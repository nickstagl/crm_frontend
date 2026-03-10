class ActivitiesController < ApplicationController

  def create
    @activity = Activity.new
    @activity["contact_id"] = params["contact_id"]
    @activity["activity_type"] = params["activity_type"]
    @activity["note"] = params["note"]
    @activity["user_id"] = params["user_id"].present? ? params["user_id"] : session["user_id"]
    @activity.save
    if params["company_id"].present?
      redirect_to "/companies/#{params["company_id"]}"
    else
      redirect_to "/contacts/#{@activity["contact_id"]}"
    end
  end

end
