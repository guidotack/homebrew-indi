require 'formula'

class Libindi < Formula
  homepage 'http://www.indilib.org'
  head 'https://github.com/indilib/indi.git', :using => :git
  url "https://github.com/indilib/indi/archive/refs/tags/v1.8.9.zip"
  sha256 "11c3302cdaa1d8e1727f1d00f7b6309e91a80a9ab3c6d7abfb923c09fe091613"
  version "1.8.9"

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
