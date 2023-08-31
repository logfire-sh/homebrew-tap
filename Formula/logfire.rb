# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Logfire < Formula
  desc "Logfire command line interface"
  homepage "https://github.com/logfire-sh/cli"
  version "3.2"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/logfire-sh/cli/releases/download/v3.2/logfire_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "97de9694c461feac57983b83a268ede63509974d66a9886958827316d691f40f"

      def install
        bin.install "logfire"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/logfire-sh/cli/releases/download/v3.2/logfire_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f46f104430ad5480098c9a5c41468ff39837f9c5fa9d6b48cd5257b5538259af"

      def install
        bin.install "logfire"
      end
    end
  end

  test do
    system "#{bin/logfire}"
  end
end
