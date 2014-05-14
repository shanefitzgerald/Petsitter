class PetInfosController < ApplicationController

	before_action :authenticate_user

	def index
		@petinfos = PetInfo.all
	end

	def show
	    @petinfo = PetInfo.find(params[:id])
	end

	def edit
	    @petinfo = PetInfo.find(params[:id])
	end

	def destroy
		
	end

	def new
	    @petinfo = PetInfo.new
	end

	def create
		@petinfo = PetInfo.new(params.require(:pet_info).permit(:pet_name, :pet_age, :pet_breed, :chip_number, :tag_number, :vet_name, :vet_address, :vet_phone, :key_location, :food_brand, :food_location, :feeding_time, :special_feeding_instruction, :walking_times, :walking_route_directions, :water_instructions, :special_instructions, :medicine_location, :emergency_contact_number))
		if @petinfo.save
			redirect_to pet_infos_path
		else
			render 'new'
		end
	end

	def update
		@petinfo = PetInfo.find(params[:id])
		if @petinfo.update(params.require(:pet_info).permit(:pet_name, :pet_age, :pet_breed, :chip_number, :tag_number, :vet_name, :vet_address, :vet_phone, :key_location, :food_brand, :food_location, :feeding_time, :special_feeding_instruction, :walking_times, :walking_route_directions, :water_instructions, :special_instructions, :medicine_location, :emergency_contact_number))
			redirect_to pet_infos_path
		else
			render 'edit'
		end
	end

end
