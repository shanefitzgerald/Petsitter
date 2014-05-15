class PetInfosController < ApplicationController

	before_action :authenticate_user

	def index
		@petinfos = current_user.pet_infos
	end

	def show
	    @petinfo = current_user.pet_infos.find(params[:id])
	end

	def edit
	    @petinfo = current_user.pet_infos.find(params[:id])
	end

	def destroy
		
	end

	def new
	    @petinfo = PetInfo.new
	end

	def create
		@petinfo = current_user.pet_infos.new(params.require(:pet_info).permit(:pet_name, :pet_age, :pet_breed, :chip_number, :tag_number, :vet_name, :vet_address, :vet_phone, :key_location, :food_brand, :food_location, :feeding_time, :special_feeding_instruction, :walking_times, :walking_route_directions, :water_instructions, :special_instructions, :medicine_location, :emergency_contact_number))
		if @petinfo.save
			redirect_to pet_infos_path
		else
			render 'new'
		end
	end

	def update
		@petinfo = current_user.pet_infos.find(params[:id])
		if @petinfo.update(params.require(:pet_info).permit(:pet_name, :pet_age, :pet_breed, :chip_number, :tag_number, :vet_name, :vet_address, :vet_phone, :key_location, :food_brand, :food_location, :feeding_time, :special_feeding_instruction, :walking_times, :walking_route_directions, :water_instructions, :special_instructions, :medicine_location, :emergency_contact_number))
			redirect_to pet_infos_path
		else
			render 'edit'
		end
	end

end
