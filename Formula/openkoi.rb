class Openkoi < Formula
  desc "Executive Function as a Service. AI agent that thinks before it acts."
  homepage "https://openkoi.ai"
  version "2026.3.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/openkoi-ai/openkoi/releases/download/v#{version}/openkoi-macos-arm64.tar.gz"
      sha256 "a287fa9e089bfac2214d09575548c16aa3ad2364afff6aa4f371089a71f1dde5"
    end
    on_intel do
      url "https://github.com/openkoi-ai/openkoi/releases/download/v#{version}/openkoi-macos-x86_64.tar.gz"
      sha256 "a5b8628c6baf1aafb9fbc17f95d50fbdb917cc8d145ce196ce32afc4d4200580"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/openkoi-ai/openkoi/releases/download/v#{version}/openkoi-linux-arm64.tar.gz"
      sha256 "bb65240389ac01e89a26aa1529902267198dc6548155c67c8c96269c67036537"
    end
    on_intel do
      url "https://github.com/openkoi-ai/openkoi/releases/download/v#{version}/openkoi-linux-x86_64.tar.gz"
      sha256 "f1fd1d08ec60abbe024a77da8ebe9ce50d75385e7fd764192fb8c07914f976b4"
    end
  end

  def install
    bin.install "openkoi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/openkoi --version")
  end
end
