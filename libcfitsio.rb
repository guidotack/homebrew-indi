require "formula"

class Libcfitsio < Formula
  homepage "http://heasarc.gsfc.nasa.gov/docs/software/fitsio/fitsio.html"
  url "http://heasarc.gsfc.nasa.gov/FTP/software/fitsio/c/cfitsio3410.tar.gz"
  sha256 "a556ac7ea1965545dcb4d41cfef8e4915eeb8c0faa1b52f7ff70870f8bb5734c"
  version "3.410"

  def install
    ENV.append "CFLAGS", "-march=core2"
    ENV.append "CPPFLAGS", "-march=core2"
    ENV.append "CXXFLAGS", "-march=core2"
    system "./configure", "--prefix=#{prefix}"
    system "make shared"
    system "make install"

    if build.with? "examples"
      system "make fpack funpack"
      bin.install "fpack", "funpack"

      resource("examples").stage do
        # compressed_fits.c does not work (obsolete function call)
        (Dir["*.c"] - ["compress_fits.c"]).each do |f|
          system ENV.cc, f, "-I#{include}", "-L#{lib}", "-lcfitsio", "-lm", "-o", "#{bin}/#{f.sub('.c', '')}"
        end
      end
    end
  end
end
