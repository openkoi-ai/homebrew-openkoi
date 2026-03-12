class Openkoi < Formula
  desc "Executive Function as a Service. AI agent that thinks before it acts."
  homepage "https://openkoi.ai"
  version "2026.3.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/openkoi-ai/openkoi/releases/download/v#{version}/openkoi-macos-arm64.tar.gz"
      sha256 "1eec0d2de0797015273b4bc00686e267bca116f33a9942ccbb312d0f722fe31f"
    end
    on_intel do
      url "https://github.com/openkoi-ai/openkoi/releases/download/v#{version}/openkoi-macos-x86_64.tar.gz"
      sha256 "76630a2386fb591260941db99d17ed83755a882603937791d227b3964be02f0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/openkoi-ai/openkoi/releases/download/v#{version}/openkoi-linux-arm64.tar.gz"
      sha256 "dbc27f34dec57f9bda247c2d2d30af49728840f55b0bd05d796e4b101de384ef"
    end
    on_intel do
      url "https://github.com/openkoi-ai/openkoi/releases/download/v#{version}/openkoi-linux-x86_64.tar.gz"
      sha256 "c9826bcc68680c487193d55853a8d707294cd46c3421a79c42ce19b30a337a60"
    end
  end

  def install
    bin.install "openkoi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/openkoi --version")
  end
end
