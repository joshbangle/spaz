class EnrollmentsController < ApplicationController
  before_action :authenticate_user!

  def create
    current_user.enrollments.create(guide: current_guide)
    redirect_to guide_path(current_guide)
  end

  private


  def current_guide
    @current_guide ||= Guide.find(params[:guide_id])
  end



end
