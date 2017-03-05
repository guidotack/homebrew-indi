require 'formula'

class IndiSbig < Formula
  homepage 'http://www.indilib.org'
  head 'https://github.com/indilib/indi.git', :using => :git, :tag => '1.4.1'
  url 'https://github.com/indilib/indi/archive/v1.4.1.zip'

  version "1.4.1"

  depends_on 'cmake' => :build
  depends_on 'seanhoughton/astronomy/libindi'
  #depends_on 'sbig-universal-driver'. # note: can't depend on cask's yet, use "install" as a workaround

  def install
    system "brew", "cask", "install", "sbig-universal-driver"
    system "cmake", "3rdparty/indi-sbig", *std_cmake_args
    system "make", "install"
  end
end
