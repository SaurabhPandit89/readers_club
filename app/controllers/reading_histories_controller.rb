class ReadingHistoriesController < ApplicationController
  def mark_as_read
    book = Book.find(params[:book_id])
    if book.mark_as_read!(current_user)
      flash[:success] = 'Book marked as read successfully.'
    else
      flash[:error] = 'Failed to mark book as read. Please try again.'
    end
    render :response, locals: { book: book }
  end

  def mark_as_unread
    book = Book.find(params[:book_id])
    if book.mark_as_unread!(current_user)
      flash[:success] = 'Book marked as unread successfully.'
    else
      flash[:error] = 'Failed to mark book as unread. Please try again.'
    end
    render :response, locals: { book: book }
  end
end
