class ReviewsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_message
    # GET /reviews
    def index
        reviews = Review.all
        render json: reviews
    end

    # GET /reviews/:id
    def show
        review = find_review
        render json: review.to_json(only: [:id, :title, :comment], include: [user: {only: [:id, :username]}, airline: {only: [:id, :name]}])
    end

    # POST /reviews
    def create
        new_review = Review.create!(review_params)
        render json: new_review.to_json(only: [:id, :title, :comment], include: [user: {only: [:id, :username]}, airline: {only: [:id, :name]}])
    rescue ActiveRecord::RecordInvalid => invalid
        render json: {errors: invalid.record.errors.full_messages}
    end

    # PATCH/PUT /reviews
    def update
        review = find_review
        review.update!(review_params)
        render json: review.to_json(only: [:id, :title, :comment], include: [user: {only: [:id, :username]}, airline: {only: [:id, :name]}])
    rescue ActiveRecord::RecordInvalid => invalid
        render json: {errors: invalid.record.errors.full_messages}
    end

    # DELETE /reviews/:id
    def destroy
        review = find_review
        review.destroy
        head :no_content, status: :ok
    end

    private
    def find_review
        Review.find(params[:id])
    end

    def render_not_found_message
        render json: {error: 'Review not found'}, status: 404
    end

    def review_params
        params.require(:review).permit(:title, :comment, :airline_id, :user_id)
    end
end
