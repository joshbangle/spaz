class Instructor::GuidesController < ApplicationController
	before_action :authenticate_user!
	before_action :require_authorized_for_current_guide, only: [:show]
	def new
		@guide = Guide.new
	end

	def create
		@guide = current_user.guides.create(guide_params)
		if @guide.valid?
			redirect_to instructor_guide_path(@guide)
		else
			render :new, status: :unprocessable_entity
		end
	end

	def show
	end


	private

	def require_authorized_for_current_guide
		if current_guide.user != current_user
			render plain: "Unauthorized", status: :unauthorized
		end
	end

	helper_method :current_guide
	def current_guide
		@current_guide ||= Guide.find(params[:id])
	end

	def guide_params
		params.required(:guide).permit(:title, :description, :cost)
	end

end
