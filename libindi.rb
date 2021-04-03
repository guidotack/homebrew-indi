require 'formula'

class Libindi < Formula
  homepage 'http://www.indilib.org'
  head 'https://github.com/indilib/indi.git', :using => :git
  url "https://github.com/indilib/indi/archive/refs/heads/master.zip"
  version "1.9.0"

  depends_on 'cmake' => :build
  depends_on 'libnova'
  depends_on 'libcfitsio'
  depends_on 'libusb'
  depends_on 'gsl'
  depends_on 'libjpeg'
  depends_on 'libfftw3'

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

end
