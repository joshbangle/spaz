class Instructor::SectionsController < ApplicationController
  def new
    @guide = Guide.find(params[:guide_id])
    @section = Section.new
  end

  def create
    @guide = Guide.find(params[:guide_id])
    @section = @guide.sections.create(section_params)
    redirect_to instructor_guide_path(@guide)
  end

  private

  def section_params
    params.require(:section).permit(:title)
  end






end
