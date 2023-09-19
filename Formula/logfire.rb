# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Logfire < Formula
  desc "Logfire command line interface"
  homepage "https://github.com/logfire-sh/cli"
  version "1.0"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/logfire-sh/cli/releases/download/v1.0/logfire_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d315fba02bf75fb22f50999fed9d212eed09e94c25660c805fd990bc93a4bdf9"

      def install
        bin.install "logfire"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/logfire-sh/cli/releases/download/v1.0/logfire_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ffce77daac19b6951eca62d72f82c6f435e935d8c1f20ad9af5d926f14b05050"

      def install
        bin.install "logfire"
      end
    end
  end

  test do
    system "#{bin/logfire}"
  end
end
