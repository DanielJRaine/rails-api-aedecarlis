class Item < ActiveRecord::Base
  def upload_url
    upload.url
  end
end
