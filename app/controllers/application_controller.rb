class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/restaurants" do
    restaurant = Restaurant.all
    restaurant.to_json
  end


  #C- post exisiting rest into wishlist 
  #R - get from rest in wishlist
  #U- patch ranking of rest on wishlist
  # D - delete from wishlist

get '/wishlist' do
    wishlist = Wishlist.all
    wishlist.to_json(:include => :restaurant)
  end


get '/wishlist/:id' do
  wishlist= Wishlist.find(params[:id])
  wishlist.to_json(:include => :restaurant)

end

post '/wishlist' do
  wishlist = Wishlist.create(
    ranking: params[:ranking],
    user_id: params[:user_id],
    restaurant_id: params[:restaurant_id]
    )
    wishlist.to_json
  end 

patch '/wishlist/:id' do
  wishlist = Wishlist.find(params[:id])
    wishlist.update(ranking: params[:ranking])
    wishlist.to_json
  end

delete '/wishlist/:id' do
    wishlist = Wishlist.find(params[:id])
    wishlist.destroy
    wishlist.to_json
  end

get '/attend' do
    attend  = Attend.been_to
    attend.to_json(:include => :restaurant)
  end


get '/attend/:id' do
   attend = Attend.find(params[:id])
   attend.to_json(:include => :restaurant)
 
 end

post '/attend' do
  attend = Attend.create(
    been_to: params[:been_to],
    user_id: params[:user_id],
    restaurant_id: params[:restaurant_id]
    )
    attend.to_json
  end 
# 
# patch '/wishlist/:id' do
#   attend = Attend.find(params[:id])
#     attend.update(ranking: params[:ranking])
#     wishlist.to_json
#   end
# 
# delete '/wishlist/:id' do
#     attend = Attend.find(params[:id])
#     wishlist.destroy
#     wishlist.to_json
#   end

end
