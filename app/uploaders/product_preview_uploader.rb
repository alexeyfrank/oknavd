# encoding: utf-8

class ProductPreviewUploader < CarrierWave::Uploader::Base
  storage :file

  def store_dir
    "system/uploads/products/#{mounted_as}/#{model.id}"
  end

end
