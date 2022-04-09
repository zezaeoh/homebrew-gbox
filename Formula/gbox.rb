# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gbox < Formula
  desc "Gbox - use github as storage"
  homepage "https://github.com/zezaeoh/gbox"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/zezaeoh/gbox/releases/download/v0.2.0/gbox_Darwin_amd64.tar.gz"
      sha256 "ed7dedf59a3581940b94821b08ca125eda2672720faf73f321189f2957d2b5ac"

      def install
        bin.install "gbox"

        # Install bash completion
        output = Utils.popen_read("#{bin}/gbox completion bash")
        (bash_completion/"gbox").write output

        # Install zsh completion
        output = Utils.popen_read("#{bin}/gbox completion zsh")
        (zsh_completion/"_gbox").write output
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/zezaeoh/gbox/releases/download/v0.2.0/gbox_Darwin_arm64.tar.gz"
      sha256 "225f4058313f6c456ec328b8b9bd8cbb772dbfa7b97dee494a22cafe98af0b50"

      def install
        bin.install "gbox"

        # Install bash completion
        output = Utils.popen_read("#{bin}/gbox completion bash")
        (bash_completion/"gbox").write output

        # Install zsh completion
        output = Utils.popen_read("#{bin}/gbox completion zsh")
        (zsh_completion/"_gbox").write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/zezaeoh/gbox/releases/download/v0.2.0/gbox_Linux_armv6.tar.gz"
      sha256 "fdb47115a9359db2ad17709de3f8c7047652c368ab12a06a6364164ea24d3f4a"

      def install
        bin.install "gbox"

        # Install bash completion
        output = Utils.popen_read("#{bin}/gbox completion bash")
        (bash_completion/"gbox").write output

        # Install zsh completion
        output = Utils.popen_read("#{bin}/gbox completion zsh")
        (zsh_completion/"_gbox").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zezaeoh/gbox/releases/download/v0.2.0/gbox_Linux_amd64.tar.gz"
      sha256 "7db7cf64e04924b8edd47a71b30b7e600e3e765130ea0f6bed37adb8c26042fe"

      def install
        bin.install "gbox"

        # Install bash completion
        output = Utils.popen_read("#{bin}/gbox completion bash")
        (bash_completion/"gbox").write output

        # Install zsh completion
        output = Utils.popen_read("#{bin}/gbox completion zsh")
        (zsh_completion/"_gbox").write output
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zezaeoh/gbox/releases/download/v0.2.0/gbox_Linux_arm64.tar.gz"
      sha256 "a4b5957694313bd7dfccf2e659e25b77b88928aa737837e461c822a8d62171ce"

      def install
        bin.install "gbox"

        # Install bash completion
        output = Utils.popen_read("#{bin}/gbox completion bash")
        (bash_completion/"gbox").write output

        # Install zsh completion
        output = Utils.popen_read("#{bin}/gbox completion zsh")
        (zsh_completion/"_gbox").write output
      end
    end
  end

  test do
    system "gbox version"
  end
end
