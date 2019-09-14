class AnswersController < ApplicationController
  before_action :set_questions

  # def index
  # end

  # def show
  # end

  def new           # GET /answers/new
    @answer = Answer.new
  end

  def create        # POST /answers
    option_ids = params[:options].split(",")
    travel_score = 0
    home_score = 0
    consumption_score = 0
    total_score = 0
    society_score = 0
    option_ids.each do |option_id|
      option = Option.find(option_id)
      Answer.create(user: current_user, option: option, date: DateTime.now, category: option.question.category)
      if option.question.category.name == "Travel"
        travel_score += option.weight
      elsif option.question.category.name == "Home"
        home_score += option.weight
      elsif option.question.category.name == "Consumption"
        consumption_score += option.weight
      else
        society_score += option.weight
      end
      total_score += option.weight
    end
    Score.create(user: current_user, value: total_score, travel_value: travel_score, home_value: home_score, consumption_value: consumption_score, society_value: society_score, date: Date.today, category: Category.last)
  end

  def edit          # GET /questions/:id/edit
  end

  def update        # PATCH /questions/:id
  end

  def destroy       # DELETE /questions/:id
  end

  private

  def set_questions
    # @questions = Question.where(category: params[:category])
    # @questions = Question.select { |q| q.category.name == params[:category] }
    @questions = Question.all
  end

  def answer_params
    params.require(:answer).permit(:option_id, :user_id, :date)
  end
end
