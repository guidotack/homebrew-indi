require 'formula'

class Libindi < Formula
  homepage 'http://www.indilib.org'
  head 'https://github.com/indilib/indi.git', :using => :git, :tag => '1.3.1'
  url 'https://github.com/indilib/indi/archive/v1.3.1.zip'

  version "1.3.1"

  depends_on 'cmake' => :build
  depends_on 'polakovic/astronomy/libnova'
  depends_on 'polakovic/astronomy/libcfitsio'
  depends_on 'libusb'
  depends_on 'gsl'

  def install
    system "cmake", ".", "-DCMAKE_CXX_FLAGS=-march=core2", *std_cmake_args
    system "make", "install"
  end

end
