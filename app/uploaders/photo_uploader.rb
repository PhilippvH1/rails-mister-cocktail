class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process eager: true
  process convert: 'jpg'

  version :show do
    resize_to_fit 800, 600
  end

   version :thumbnail do
    resize_to_fit 150, 150
  end

end
