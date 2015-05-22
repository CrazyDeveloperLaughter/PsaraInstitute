# encoding: utf-8
require 'streamio-ffmpeg'
require 'carrierwave'
class VideoUploader < CarrierWave::Uploader::Base

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(jpg jpeg gif png mov wmv mp4 flv avi)
  end

  version :screenshot do
    process :screenshot
    def full_filename (for_file = model.logo.file)
      "screenshot.jpg"
    end
  end
 
  def screenshot
    tmpfile = File.join(File.dirname(current_path), "tmpfile")
    File.rename(current_path, tmpfile)
    movie = FFMPEG::Movie.new(tmpfile)
    movie.screenshot(current_path + ".jpg", preserve_aspect_ratio: :width)
    File.rename(current_path + ".jpg", current_path)
    File.delete(tmpfile)
  end
end
