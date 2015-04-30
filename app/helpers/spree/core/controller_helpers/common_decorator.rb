# This method does not work yet
# if this works we can remove the TaxonsController decorator
# as this seems more DRY and a better way to do things
Spree::Core::ControllerHelpers::Common.class_eval do    
  def render_404(exception = nil)
    puts "************************#{exception}**************************************we are here now"
    respond_to do |type|
      type.html { render :status => 422}
      type.all  { render :status => 422}
    end
  end
end