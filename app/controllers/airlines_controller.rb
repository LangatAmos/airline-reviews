class AirlinesController < ApplicationController

rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_message
    # GET /airlines
    def index
        airlines = Airline.all
        render json: airlines
    end

    # GET /airlines/:id
    def show
        airline = find_airline
        render json: airline.to_json(only: [:id, :name, :image_url, :description], include: [reviews: {only: [:id, :title, :comment], include: [user: {only: [:id, :username]}]}] )
    end

    # POST /airlines
    def create
        new_airline = Airline.create!(airline_params)
        render json: new_airline
    rescue ActiveRecord::RecordInvalid => invalid
        render json: {errors: invalid.record.errors.full_messages}
    end

    # PATCH/PUT /airlines
    def update
        airline = find_airline
        airline.update!(airline_params)
        render json: airline
    rescue ActiveRecord::RecordInvalid => invalid
        render json: {errors: invalid.record.errors.full_messages}
    end

    private
    def find_airline
        Airline.find(params[:id])
    end

    def render_not_found_message
        render json: {error: 'Airline not found'}, status: 404
    end

    def airline_params
        params.require(:airline).permit(:name, :image_url, :description)
    end

    # Get a specific airline
    def airline
        @airline ||= Airline.includes(reviews: :user).find_by(id: params[:id])
    end
end
