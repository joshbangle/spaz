class Instructor::SectionsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_guide, only: [:create]
  before_action :require_auth_for_current_section, only: [:update]


  def create
    @section = current_guide.sections.create(section_params)
    redirect_to instructor_guide_path(current_guide)
  end

  def update
    current_section.update_attributes(section_params)
  end

  private

  def require_authorized_for_current_guide
    if current_guide.user != current_user
      render plain: "Unauthorized", status: :unauthorized
    end
  end

  def require_auth_for_current_section
    if current_section.guide.user != current_user
      render plain: "Unauthorized", status: :unauthorized
    end
  end

  def current_section
    @current_section ||= Section.find(params[:id])
  end

  helper_method :current_guide
  def current_guide
    if params[:guide_id]
      @current_guide ||= Guide.find(params[:guide_id])
    else
      current_section.guide
    end
  end


  def section_params
    params.require(:section).permit(:title, :row_order_position)
  end






end
