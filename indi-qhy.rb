require 'formula'

class IndiQhy < Formula
  homepage 'http://www.indilib.org'
  head 'https://github.com/indilib/indi.git', :using => :git, :tag => '1.4.1'
  url 'https://github.com/indilib/indi/archive/v1.4.1.zip'

  version "1.4.1"

  depends_on 'cmake' => :build
  depends_on 'seanhoughton/astronomy/libindi'
  depends_on 'seanhoughton/astronomy/libqhy'

  def install
    system "cmake", "3rdparty/indi-qhy", *std_cmake_args
    system "make", "install"
  end
end
