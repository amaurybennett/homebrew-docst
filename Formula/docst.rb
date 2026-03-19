# typed: true
# frozen_string_literal: true

class Docst < Formula
  desc "Convertit des fichiers .docx en Typst (.typ) et Markdown/EPUB (.md)"
  homepage "https://github.com/amaurybennett/docst"
  license "MIT"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amaurybennett/docst/releases/download/v1.0.1/docst-osx-arm64.tar.gz"
      sha256 "c98f12a3c64a70eee664375e25c7805d024c890ab8307a6cfe7b7ed9393c07f5"
    end
  end

  def install
    bin.install "docst"
  end

  test do
    system "#{bin}/docst", "--help"
  end
end
