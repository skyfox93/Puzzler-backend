class Api::V1::PuzzlesController < ApplicationController


    def index
      @puzzles = Puzzle.all
      render json:@puzzles
    end

    # ? post new puzzle?
    def create
      @puzzle = Puzzle.new(puzzle_params)
      if @puzzle.save
        render json: @puzzle, status: :created
      else
        render json: @puzzle.errors, status: :unprocessable_entity
      end
    end

    def update
      set_puzzle
      if @puzzle.update(puzzle_params)
        render json: @puzzle
      else
        render json: @puzzle.errors, status: :unprocessable_entity
      end
    end

    def delete
      params.permit(:id)
      @puzzle = Puzzle.find(params[:id])

      if @puzzle.valid?
        @puzzle.delete
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
      else
        render json: {error: 'failed to create new puzzle'}, status: :unprocessable_entity
      end
    end



    private
    # Use callbacks to share common setup or constraints between actions.
    def set_puzzle
      @puzzle = Puzzle.find(params[:id])
    end


    def puzzle_params
      params.require(:puzzle).permit(:id, :complete, :tiles)
    end

end
