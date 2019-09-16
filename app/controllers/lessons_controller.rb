class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :req_enrolled_for_lessons
  def show

  end





  private

  def req_enrolled_for_lessons
    if current_user.enrolled_in?(current_lesson.section.guide) != true
      redirect_to guide_path(current_lesson.section.guide), alert: "You must enroll to view this guide's lessons!"
    end
  end

  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end



end
