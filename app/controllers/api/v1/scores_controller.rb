class Api::V1::ScoresController < ApplicationController


def index
  @scores = Score.all
  render json: @scores
end

def show
  render json: @score
end

private

def score_params
  params.permit(:game_score)
end

def find_score
  @score = Score.find(params[:id])
end

end