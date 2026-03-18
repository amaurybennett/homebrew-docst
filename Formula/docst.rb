# typed: true
# frozen_string_literal: true

class Docst < Formula
  desc "Convertit des fichiers .docx en Typst (.typ) et Markdown/EPUB (.md)"
  homepage "https://github.com/amaurybennett/docst"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amaurybennett/docst/releases/download/v0.1.0/docst-osx-arm64.tar.gz"
      sha256 "b9a30ce541c25c8b7e8d2e18c18b5c690a93ac8b10ea3e74403eeaef211a82b4"
    end
  end

  def install
    bin.install "docst"
  end

  test do
    system "#{bin}/docst", "--help"
  end
end
