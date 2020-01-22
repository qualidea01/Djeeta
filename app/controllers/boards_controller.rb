class BoardsController < ApplicationController
	before_action :set_target_board, only: %i[show edit update destroy]

	def index
		#掲示板データの取得@boards変数に格納
		@boards = Board.page(params[:page])
	end
	
	def new
		#新規に掲示板データを作成
		@board = Board.new
	end

	def create
		#board_paramsに格納されているデータを元に掲示板作成
		board = Board.create(board_params)
		redirect_to board
	end

	def show
	end

	def edit 
		@board = Board.find(params[:id])
	end

	def update 
		board.update(board_params)

		redirect_to @board
	end

	def destroy
		board.delete

		redirect_to boards_path
	end
	private

	#paramsの中のboardテーブルにあるname,title,bodyの値のみを取得するように明示している
	def board_params
		params.require(:board).permit(:name, :title, :body)
	end

	def set_target_board
		@board = Board.find(params[:id])
	end

end
