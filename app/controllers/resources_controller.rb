class ResourcesController < ApplicationController

    def index 
        resources = Resource.all
        render json: resources, except: [:created_at, :updated_at, :description, :reviews], status: :ok
    end

    def show
        resource = Resource.find(params[:id])
        render json: resource, status: :ok
    end
end
