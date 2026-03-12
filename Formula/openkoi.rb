class Openkoi < Formula
  desc "Executive Function as a Service. AI agent that thinks before it acts."
  homepage "https://openkoi.ai"
  version "2026.3.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/openkoi-ai/openkoi/releases/download/v#{version}/openkoi-macos-arm64.tar.gz"
      sha256 "c3d0cf9fea16f4476e4ed74abb13a519edc24b1a2556fd3c5c1c63e0e3252ae4"
    end
    on_intel do
      url "https://github.com/openkoi-ai/openkoi/releases/download/v#{version}/openkoi-macos-x86_64.tar.gz"
      sha256 "f2bc19c55c24f3abba59e548fb8a8537617cfa9fde18ba26a782a07ea24407a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/openkoi-ai/openkoi/releases/download/v#{version}/openkoi-linux-arm64.tar.gz"
      sha256 "f4a46157442630d7a5b48ea1011f80be2fcdc4710787852fef874beeff3ff338"
    end
    on_intel do
      url "https://github.com/openkoi-ai/openkoi/releases/download/v#{version}/openkoi-linux-x86_64.tar.gz"
      sha256 "60480b7935bd2e901b81d4b75e1f394ae313109ef0338020a931bd65196c2f05"
    end
  end

  def install
    bin.install "openkoi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/openkoi --version")
  end
end
