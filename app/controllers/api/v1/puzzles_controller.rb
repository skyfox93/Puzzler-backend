class Api::V1::PuzzlesController < ApplicationController

  
    def index
      @puzzles = Puzzle.all
    end
  
    # GET /puzzles/1
    def show
      render json: @puzzle
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
      if @puzzle.update(puzzle_params)
        render json: @puzzle
      else
        render json: @puzzle.errors, status: :unprocessable_entity
      end
    end
  
    def edit
      @puzzle = find(params[:id])
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
    def set_list
      @puzzle = Puzzle.find(params[:id])
    end

    
    def puzzle_params
      params.require(:puzzle).permit(:id, :imageUrl)
    end

end
