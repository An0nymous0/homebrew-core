class Mp3cat < Formula
  desc "Reads and writes mp3 files"
  homepage "http://tomclegg.net/mp3cat"
  url "http://tomclegg.net/software/mp3cat-0.4.tar.gz"
  sha256 "fd2b0d58018f5117bd1e22298c899bef5e6af61a0c540186d16d2bf516d6849a"

  bottle do
    cellar :any_skip_relocation
    sha256 "0539db62bf14db5f54b37385bdd621192bcb699fb69a0ef1d2fc3f1135714f48" => :mojave
    sha256 "f958c3e6b1dccfad12daec5c0692af405cd97342871ac76615a542ba17ee2de3" => :high_sierra
    sha256 "4ae83c8ee5219135c9ca52b16b8e103b8c9f67c12cdf60e6584353f39276ed7c" => :sierra
    sha256 "c582f29c5c3c05697e4805b75209dbab5797d6a3c62de5b4d21972250bc8d2e9" => :el_capitan
    sha256 "a70d1a1a379c4813f57c32284f13348e36302a61d0c933c2a4fb19342c43be1f" => :yosemite
    sha256 "43053bea923c17bd7a31532cdcaedfcb3681a04aa1b0b66e33defc41c7e00629" => :mavericks
    sha256 "bffd0a1ea0cb5ce1eb39c4147686702f060dd25e949385009946835be9826b8d" => :mountain_lion
  end

  def install
    system "make"
    bin.install %w[mp3cat mp3log mp3log-conf mp3dirclean mp3http mp3stream-conf]
  end

  test do
    pipe_output("#{bin}/mp3cat -v --noclean - -", test_fixtures("test.mp3"))
  end
end
