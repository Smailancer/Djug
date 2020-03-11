class RetweetsController < ApplicationController
  before_action :authenticate_user!

  def create
    retweet = current_user.retweets.new(tweet_id: params[:tweet_id])
    if retweet.save
      redirect_to user_path(current_user.username), notice: 'تم إعادة التغريد'
    else  
      redirect_back fallback_location: root_path, alert: 'حدث شيئ خاطئ'
    end 
  end

  def destroy
    retweet = current_user.retweets.find(params[:id])
    retweet.destroy 
    redirect_to user_path(current_user.username), notice: 'تم حذف التغريدة '
  end
end
