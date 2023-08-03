# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Logfire < Formula
  desc "Logfire command line interface"
  homepage "https://github.com/logfire-sh/cli"
  version "1.7"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/logfire-sh/cli/releases/download/v1.7/logfire_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c97f5255599c8081abf80807ae31a49d2d6a0f87b6df5617035b29bfa83f4c92"

      def install
        bin.install "logfire"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/logfire-sh/cli/releases/download/v1.7/logfire_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "60f046a3472c5a6a4451a5e613b10605c93e7c31fd249a07f8e97ca8b4087846"

      def install
        bin.install "logfire"
      end
    end
  end

  test do
    system "#{bin/logfire}"
  end
end
