class AddDummyValues < ActiveRecord::Migration
  def self.up
    em1=Employee.create(:name=>'employe1')
    pr1=Product.create(:name=>'product1')
    pi1=Picture.create(:name=>'picture1')
    pi2=Picture.create(:name=>'picture2')
    pi3=Picture.create(:name=>'picture3')
    
    em1.pictures<<pi1
    em1.pictures<<pi1
    pr1.pictures<<pi3

    
    
    
  end

  def self.down
    Employee.destroy_all
    Picture.destroy_all
    Product.destroy_all
  end
end
