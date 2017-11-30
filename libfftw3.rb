require 'formula'

class Libfftw3 < Formula
  homepage 'http://www.fftw.org'
  url 'http://www.fftw.org/fftw-3.3.7.tar.gz'
  sha256 '3b609b7feba5230e8f6dd8d245ddbefac324c5a6ae4186947670d9ac2cd25573'
  version "3.3.7"

  def install
    system "./configure", "--prefix=#{prefix}", "--enable-threads"
    system "make", "install"
  end

end
