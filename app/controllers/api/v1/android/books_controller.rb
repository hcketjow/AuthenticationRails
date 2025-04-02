module Api
  module V1
    module Android
      class BooksController < ApiController
        before_action :set_book, only: %i[show]
        skip_before_action :doorkeeper_authorize!
        before_action :is_admin?

        def index
          @books = Book.all
          render json: @books
        end

        def show
          render json: @book
        end

        private

        def set_book
          @book = Book.find(params[:id])
        end

        def book_params
          params.require(:book)
        end
      end
    end
  end
end
