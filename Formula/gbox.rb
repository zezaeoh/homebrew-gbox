class GBox < Formula
  desc "GBox - use github as storage"
  homepage "https://github.com/zezaeoh/gbox"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zezaeoh/gbox/releases/download/v0.1.0/gbox_0.1.0_Darwin_arm64.tar.gz"
      sha256 "a164c555102dc9f2bdd71d151099b564cc2d01e2c4d96d43e311b2540914a2c3"

      def install
        bin.install "gbox"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zezaeoh/gbox/releases/download/v0.1.0/gbox_0.1.0_Darwin_x86_64.tar.gz"
      sha256 "d8e828c59cf2c9509040f3dffe78d95b9d8310b960fcc440211f5fd5b2f18416"

      def install
        bin.install "gbox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/zezaeoh/gbox/releases/download/v0.1.0/gbox_0.1.0_Linux_x86_64.tar.gz"
      sha256 "e00059113cb5d8a88b9c50efa5a59bae6b2e21716f708d2c2c72b577ac98f674"

      def install
        bin.install "gbox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zezaeoh/gbox/releases/download/v0.1.0/gbox_0.1.0_Linux_arm64.tar.gz"
      sha256 "baa0b60dcfc5c6b55fb8925cb0ccf0861461b791f3a290ccb458a5e1a7364402"

      def install
        bin.install "gbox"
      end
    end
  end

  test do
    system "gbox version"
  end
end
