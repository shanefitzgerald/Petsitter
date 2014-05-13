class PetinfosController < ApplicationController


def index
	@petinfos = PetInfo.all
end

def show
    @petinfo = PetInfo.find(params[:id])
end




end
