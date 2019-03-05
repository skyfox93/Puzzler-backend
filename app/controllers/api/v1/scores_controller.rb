class Api::V1::ScoresController < ApplicationController


def index
  @scores = Score.all
  render json: @scores
end

def show
  render json: @score
end

def update
  find_score
  if @score.update(score_params)
    render json: @score
  else
    render json: @puzzle.errors, status: :unprocessable_entity
  end
end

def create
  @score=Score.create(score_params)
  if @score
    render json: @score
  else
    render json: @puzzle.errors, status: :unprocessable_entity
  end

end

private

def score_params
  params.require(:score).permit(:id,:time,:puzzle_id,:current)
end

def find_score
  @score = Score.find(params[:id])
end

end
