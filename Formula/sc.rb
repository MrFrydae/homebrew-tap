class Sc < Formula
  desc "CLI for the Shortcut project management platform"
  homepage "https://github.com/MrFrydae/Shortcut-CLI"
  license "AGPL-3.0"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.8/sc-v0.0.8-aarch64-apple-darwin.tar.gz"
    sha256 "ad2e388b66ec3d323d7c48940da8431822f3b988f45035e6a8ca8d2a2e39dba0"
  end

  on_linux do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.8/sc-v0.0.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ccd9f96690a31f29cad56691d195ae42bffbe5acfe8faceea3f5a0793f56007"
    end
    on_intel do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.8/sc-v0.0.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3251f34a1cea5199b7c31733baa14ac1a77c3007c3ea96b6f47e033966a2014e"
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
