class ChildInfosController < ApplicationController

	before_action :authenticate_user

	def index
		@childinfos = current_user.child_infos
	end

	def show
	    @childinfo = current_user.child_infos.find(params[:id])
	end

	def edit
	    @childinfo = current_user.child_infos.find(params[:id])
	end

	def destroy
		
	end

	def new
	    @childinfo = ChildInfo.new
	end

	def create
		@childinfo = current_user.child_infos.new(params.require(:child_info).permit(
								   :child_name,  
								   :child_age, 
								   :contact_one, 
								   :contact_two, 
								   :emergency_contact, 
								   :food_drink_hazzard, 
								   :escape_routes, 
								   :home_phone, 
								   :doctor_phone, 
								   :special_information, 
								   :neighbor_names, 
								   :firstaidkit_location, 
								   :circuitbreaker_location, 
								   :watershutoff_location, 
								   :meal_time, 
								   :bed_time, 
								   :bedtime_routine, ))

		if @childinfo.save
			redirect_to pet_infos_path
		else
			render 'new'
		end
	end

	def update
		@childinfo = current_user.child_infos.find(params[:id])
		if @childinfo.update(params.require(:child_info).permit(
								   :child_name,  
								   :child_age, 
								   :contact_one, 
								   :contact_two, 
								   :emergency_contact, 
								   :food_drink_hazzard, 
								   :escape_routes, 
								   :home_phone, 
								   :doctor_phone, 
								   :special_information, 
								   :neighbor_names, 
								   :firstaidkit_location, 
								   :circuitbreaker_location, 
								   :watershutoff_location, 
								   :meal_time, 
								   :bed_time, 
								   :bedtime_routine ))
			flash[:success] = "You have updated successfully"
			redirect_to child_infos_path
		else
			render 'edit'
		end
	end
end
