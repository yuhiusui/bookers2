class BookComment < ApplicationRecord
	validates :comment, presence: true
	belongs_to :user
    belongs_to :book
end

# <% if @user.errors.any? %>
#   <div id="error_explanation">
#       <h2><%= @user.errors.count %>errors prohibited this obj from being saved:</h2>
#     <ul>
#       <% @user.errors.full_messages.each do |message| %>
#         <li><%= message %></li>
#       <% end %>
#     </ul>
#   </div>
# <% end %>