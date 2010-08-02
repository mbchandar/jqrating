class RatingsController < ApplicationController
  def index
    @rater = respond_to?(:current_rater) ? current_rater : params[:rating][:rater_type].constantize.find_by_id(params[:rating][:rater_id])
    @rating = @rater.rate(params[:rating])
    respond_to do |format|
      if (@rating.new_record? ? @rating.save : @rating.update_attribute(:score, params[:rating][:score]))
        format.js { render :inline => "#{20 * @rating.score}"}
      else
        format.js { render :inline => "null"}
      end
    end
  end    
end
