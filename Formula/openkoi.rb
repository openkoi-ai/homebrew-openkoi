class Openkoi < Formula
  desc "Executive Function as a Service. AI agent that thinks before it acts."
  homepage "https://openkoi.ai"
  version "2026.3.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/openkoi-ai/openkoi/releases/download/v#{version}/openkoi-macos-arm64.tar.gz"
      sha256 "332e385d1b4cf946b9e39f7c6a847eea234f6f2cabf047fb5849cafc4a9449aa"
    end
    on_intel do
      url "https://github.com/openkoi-ai/openkoi/releases/download/v#{version}/openkoi-macos-x86_64.tar.gz"
      sha256 "2863e4dee2ffde7100313c7c85604c87e59ed75bbecbe9d54aed90c4c918d075"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/openkoi-ai/openkoi/releases/download/v#{version}/openkoi-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/openkoi-ai/openkoi/releases/download/v#{version}/openkoi-linux-x86_64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "openkoi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/openkoi --version")
  end
end
