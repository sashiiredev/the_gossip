class WelcomeController < ApplicationController
  def identification
  end

  def show
    user = User.create(first_name: params["user_first_name"], last_name: params["user_last_name"])
    @current_user = user
    params["user"] = @current_user.first_name
  end

  def personal_page
    @current_user = User.last
    params["user"] = @current_user.first_name
  end

  def accueil
  end

  def gossip
    index = params["print"]
    @goss = Gossip.find(index)
  end

  def user
    id = params["name"]
    @us = User.find(id)
  end
end
