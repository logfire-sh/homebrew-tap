# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Logfire < Formula
  desc "Logfire command line interface"
  homepage "https://github.com/logfire-sh/cli"
  version "7.1"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/logfire-sh/cli/releases/download/v7.1/logfire_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a9e51fc6cf2db2abdf9a83249c98b128d309a63926107356242a48ee52ac8789"

      def install
        bin.install "logfire"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/logfire-sh/cli/releases/download/v7.1/logfire_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4466d3f98a7e5ff8d0d34e4e1cf6c6de18ab8312c806d1f209d534b1949d4ae4"

      def install
        bin.install "logfire"
      end
    end
  end

  test do
    system "#{bin/logfire}"
  end
end
