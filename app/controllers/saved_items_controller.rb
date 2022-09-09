class SavedItemsController < ApplicationController

    def index 
        resources = SavedItem.all
        render json: resources, status: :ok
    end

    def create
        resource = SavedItem.create(saved_item_params)
        render json: resource, status: :created
    end

    def destroy
        resource = SavedItem.find(params[:id])
        resource.destroy
        head :no_content
    end

    private

    def saved_item_params 
        params.permit(:title, :subject, :grade, :description, :reviews, :image)
    end
end

