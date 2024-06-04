# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Logfire < Formula
  desc "Logfire command line interface"
  homepage "https://github.com/logfire-ai/cli"
  version "1.0.6"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/logfire-ai/cli/releases/download/v1.0.6/logfire_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "761127dcba456bb1066e36bd926704d01d943b337fcb3362daf3a645220948da"

      def install
        bin.install "logfire"
      end
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/logfire-ai/cli/releases/download/v1.0.6/logfire_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "f10c1165e1cb196b9997ee823f053c257dbb0e43a394c6c045eb917e72f5f939"

        def install
          bin.install "logfire"
        end
      end
    end
  end

  test do
    system "#{bin/logfire}"
  end
end
