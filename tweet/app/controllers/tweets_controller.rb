class TweetsController < ApplicationController
  before_action :authenticate_user!

  def index
    @twitters = Twitter.includes(:user).order('created_at DESC')
  end

  def new
    @twitter = Twitter.new
  end

  def create
    @twitter = Twitter.new(twitter_params)
    if @twitter.save
      redirect_to root_path
      flash[:notice] ="ツイートを送信しました"
    else
      redirect_to new_tweet_path
      flash[:notice] ="ツイートに失敗しました"
    end
  end

  private
    def twitter_params
      params.require(:twitter).permit(:text).merge(user_id: current_user.id)
    end

end
