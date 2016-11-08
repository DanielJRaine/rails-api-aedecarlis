class Item < ActiveRecord::Base
  has_attached_file :body,  #Or whatever you want to call the image you're uploading.
            #  :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :default_url => "/images/:style/missing.png"
 validates_attachment_content_type :body, :content_type => /\Aimage\/.*\Z/

 # By default, every file uploaded will be named 'data'.
 # This renames the file to a timestamp, preventing name collisions.
 # This will also fix browser caching issues for updates
 def rename_body
   self.body.instance_write :file_name, "#{Time.now.to_i.to_s}.png"
 end

 before_post_process :rename_body
end
