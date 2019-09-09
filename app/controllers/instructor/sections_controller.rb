class Instructor::SectionsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_course

  def new
    @section = Section.new
  end

  def create
    @section = current_guide.sections.create(section_params)
    redirect_to instructor_guide_path(current_guide)
  end

  private

  def require_authorized_for_current_course
    if current_guide.user != current_user
      render plain: "Unauthorized", status: :unauthorized
    end
  end


  helper_method :current_guide
  def current_guide
    @current_guide ||= Guide.find(params[:guide_id])
  end

  def section_params
    params.require(:section).permit(:title)
  end






end
