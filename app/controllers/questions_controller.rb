class QuestionsController < ApplicationController
  layout "sessions_qa"
  before_action :set_question, only: %i[ edit update destroy ]
  before_action :set_session, only: %i[new create]

  def new
    @question = @session.questions.new
  end

  def index
    @questions = Question.all
  end

  def edit
  end

  def create
    @question = @session.questions.create(question_params)
    @question.user = current_user if user_signed_in?
    respond_to do |format|
      if @question.save
        format.html { redirect_to @session, notice: "Question was successfully created." }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: "Question was successfully updated." }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: "Question was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_question
    @question = Question.find(params[:id])
  end

  def set_session
    @session = Session.find(params[:session_id])
  end

  # Only allow a list of trusted parameters through.
  def question_params
    params.require(:question).permit(:content)
  end
end
