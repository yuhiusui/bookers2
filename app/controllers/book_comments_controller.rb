class BookCommentsController < ApplicationController
  before_action :authenticate_user!
  # before_action :correct_user, only: [:destroy]

  def create
  	book = Book.find(params[:book_id])
    comment = book.book_comments.new(book_comment_params)
    comment.user_id = current_user.id
    comment.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
  	comment = BookComment.find(params[:book_id])
  	comment.destroy
  	redirect_back(fallback_location: root_path)
  end

  private
	def book_comment_params
	    params.require(:book_comment).permit(:comment)
	end

	# def correct_user
	#     @comment = current_user.book_comments.find_by(id: params[:id])
	#     unless @comment
	#       redirect_to root_url
	#     end
	#  end
end

# <% @book_id.book_comments.each do |book_comment| %>
# <li class="comment">
#   <div class="comment-body bb">
#     <div class="comment-avatar">
#       <div class="avatar">
#         <%= attachment_image_tag @user, :profile_image, :fill, 40, 40, fallback: "noimage.png", size:'40x40' %>
#       </div>
#     </div>
#     <div class="comment-text">
#       <div class="comment-author clearfix">
#         <a href="#" class="link-author"><%= book_comment.user.name %></a>
#         <span class="comment-meta">
#           <span class="comment-date"><%= book_comment.created_at.strftime('%Y/%m/%d') %></span>
#         </span>
#         <p>
#           <% if @book_id.user == current_user %>
#           <%= link_to "削除", book_book_comments_path(@book_id, book_comment.id), method: :delete %>
#         <% end %>
#     </p>
#       </div>
#       <div class="comment-entry"><%= book_comment.comment %></div>
#     </div>
#   </div>
# </li>
# <% end %>

