class FeedbacksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post

  def create
    @feedback = @post.feedbacks.create(feedback_params)
    @feedback.user = current_user

    if @feedback.save
      flash[:notice] = 'Feedback has been created'
      redirect_to post_path(@post)
    else
      flash[:alert] = 'Feedback has not been created'
      redirect_to post_path(@post)
    end
  end

  def destroy
    @feedback = @post.feedbacks.find(params[:id])
    @feedback.destroy
    redirect_to post_path(@post)
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def feedback_params
    params.require(:feedback).permit(:content)
  end
end
