require 'formula'

class Libfftw3 < Formula
  homepage 'http://www.fftw.org'
  url 'http://www.fftw.org/fftw-3.3.7.tar.gz'
  version "3.3.7"

  def install
    system "./configure", "--prefix=#{prefix}", "--enable-threads"
    system "make", "install"
  end

end
