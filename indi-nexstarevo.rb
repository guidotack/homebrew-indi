require 'formula'

class IndiNexStarEvo < Formula
  homepage 'http://www.indilib.org'
  head 'https://github.com/indilib/indi.git', :using => :git
  url 'https://github.com/indilib/indi/archive/master.zip'

  version "0.3-dev"

  depends_on 'cmake' => :build
  depends_on 'libindi'

  def install
    system "cmake", "3rdparty/indi-nexstarevo", *std_cmake_args
    system "make", "install"
  end
end
