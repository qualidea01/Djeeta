class BoardsController < ApplicationController
	def index
		#掲示板データの取得@boards変数に格納
		@boards = Board.all
	end
	
	def new
		#新規に掲示板データを作成
		@board = Board.new
	end

	def create
		#board_paramsに格納されているデータを元に掲示板作成
		Board.create(board_params)
	end

	def show
		@board = Board.find(params[:id])
	end

	private

	#paramsの中のboardテーブルにあるname,title,bodyの値のみを取得するように明示している
	def board_params
		params.require(:board).permit(:name, :title, :body)
	end
end
