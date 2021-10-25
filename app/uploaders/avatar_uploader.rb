class AvatarUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  include Cloudinary::CarrierWave
  
  # Specify dimensions for images to resize to for appropriate display fit
  version :standard do
    process :resize_to_fill => [400, 400, :north]          
  end

  # Cloudinary will be utilized in production (Heroku) while local psql stored us utilized in development and testing environment.
  if Rails.env.production?
    include Cloudinary::CarrierWave
    CarrierWave.configure do |config|
      config.cache_storage = :file
    end
  else
    storage :file
  end

  # Cloudinary public file path to upload and display pictures
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  
  # Only files with extension jpg jpeg, gif and png will be uploaded
  def extension_whitelist
    %w[jpg jpeg gif png]
  end
end
