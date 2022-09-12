class ResourcesController < ApplicationController

    def index 
        resources = Resource.all
        render json: resources, except: [:created_at, :updated_at, :description, :reviews], status: :ok
    end

    def show
        resource = Resource.find(params[:id])
        render json: resource, status: :ok
    end

    def create
        resource = Resource.create(resource_params)
        render json: resource, status: :created
    end

    def destroy
        resource = Resource.find_by(id:params[:id])
        if resource
            resource.destroy
            head :no_content
        else
            render json: {error: "resource not found"}, status: not_found
        end 
    end 

    private

    def resource_params
        params.permit(:title, :subject, :grade, :description, :reviews, :image)
    end
end
