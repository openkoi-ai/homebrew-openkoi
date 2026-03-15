class Openkoi < Formula
  desc "Executive Function as a Service. AI agent that thinks before it acts."
  homepage "https://openkoi.ai"
  version "2026.3.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/openkoi-ai/openkoi/releases/download/v#{version}/openkoi-macos-arm64.tar.gz"
      sha256 "c1db0c19f37448d878d972d884b91d21017dd9dec33b6614945189915f4c0ee7"
    end
    on_intel do
      url "https://github.com/openkoi-ai/openkoi/releases/download/v#{version}/openkoi-macos-x86_64.tar.gz"
      sha256 "7b073ebac63a54f2db4c883cba793d8f94df3fad6e0e5ed56f4353678827c71d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/openkoi-ai/openkoi/releases/download/v#{version}/openkoi-linux-arm64.tar.gz"
      sha256 "47f2b2dff51c9037be8e3356fd3f04a9f6396f4353279caf9428b6ce35358de7"
    end
    on_intel do
      url "https://github.com/openkoi-ai/openkoi/releases/download/v#{version}/openkoi-linux-x86_64.tar.gz"
      sha256 "69515d6ac679ac65151bad74951e5f01cdffa7aa940e495fa0adf5fb2a32c394"
    end
  end

  def install
    bin.install "openkoi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/openkoi --version")
  end
end
