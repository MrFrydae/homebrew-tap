class Sc < Formula
  desc "CLI for the Shortcut project management platform"
  homepage "https://github.com/MrFrydae/Shortcut-CLI"
  version "0.0.7"
  license "AGPL-3.0"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.7/sc-v0.0.7-aarch64-apple-darwin.tar.gz"
      sha256 "a2ebc43696c7d0d0c44f34666c58973dd9137420257f6c9ebc6d623b4d97fc5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.7/sc-v0.0.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "815a73cbcadbf4dc895245aafe9c2b81e0b280bd912ea31a4d617ab1e329d8fa"
    end
    on_intel do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.7/sc-v0.0.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5169ea4ec9dec9532e1844123976aea40c610d0cec379c689e850dcc10b10502"
    end
  end

  def install
    bin.install "sc"

    generate_completions_from_executable(bin/"sc", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sc --version")
  end
end
