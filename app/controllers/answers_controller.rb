class AnswersController < ApplicationController
  before_action :set_questions, only: [:show, :edit, :update, :destroy]
  before_action :set_options

  def index         # GET /questions
    # load all questions from a category
  end

  def show          # GET /questions/:id
  end

  def new           # GET /questions/new
  end

  def create        # POST /questions
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit          # GET /questions/:id/edit
  end

  def update        # PATCH /questions/:id
  end

  def destroy       # DELETE /questions/:id
  end

  private

  def set_questions
    @questions = Question.where(category: params[:category])
  end

  def set_options
    @options = Option.where(question_id:)
  end

  def answer_params
    params.require(:answer).permit(:name, :address, :phone_number, :category, :photo)
  end
end
