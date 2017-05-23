require 'fileutils'
require 'RMagick'

def mkpdf
  jpg_files = []

  Dir::glob('images/**/*') { |f|
    if f.end_with?(".jpg") || f.end_with?(".png") || f.end_with?(".JPG") || f.end_with?(".JPEG")
      jpg_files.push(f.to_s)
    end
  }

  r = Magick::ImageList.new()

  jpg_files.reverse.each do |f|
    r.push(Magick::Image.read(f)[0])
  end

  r.write("#{ARGV[0]}.pdf")
end

mkpdf
