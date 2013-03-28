# encoding: utf-8
class NewsPreviewImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  storage :file

  def store_dir
    "system/uploads/news/#{mounted_as}/#{model.id}"
  end

  process :resize_to_fit => [160, 130]

end
