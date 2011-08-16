class PicturesController < InheritedResources::Base
  belongs_to :employee, :product, :polymorphic => true
  def index
     logger.debug("PicturesController, Parent => "+parent.inspect)
  end
end
