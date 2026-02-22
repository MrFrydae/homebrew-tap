class Sc < Formula
  desc "CLI for the Shortcut project management platform"
  homepage "https://github.com/MrFrydae/Shortcut-CLI"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.11/sc-v0.0.11-aarch64-apple-darwin.tar.gz"
      sha256 "4af09d367b2f153a710789e192300ce5e1ef56e22be2caf5367f95e0b4160488"
    end
    on_intel do
      disable! date: "2026-02-22", because: "this formula is only available for Apple Silicon"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.11/sc-v0.0.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "315f10afa62fecd0750790f9f0906036e3a0052e7eea3e527f52a5f4b80615d2"
    end
    on_intel do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.11/sc-v0.0.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ee8f4dec3393c06b32b8d94014af8485dec139336e323b7f31cd5898bdbd5d86"
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
