class SessionsController < ApplicationController
  layout "sessions_qa", only: %i[show]
  before_action :set_session, only: %i[show resume]

  def index
    @sessions = Session.all
  end

  def show
    @question = @session.questions.new
  end

  def resume; end

  private

  def set_session
    @session = Session.find(params[:id])
  end
end
