Spree::TaxonsController.class_eval do
  rescue_from ActiveRecord::RecordNotFound, with: :show_404
  
  def show_404(exception = nil)
    @taxon = Spree::Taxon.friendly.find(params[:id])
    respond_to do |type|
      type.html { render :status => 404 }
      type.all  { render :status => 404 }
    end
  end
  
end