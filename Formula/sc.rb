class Sc < Formula
  desc "CLI for the Shortcut project management platform"
  homepage "https://github.com/MrFrydae/Shortcut-CLI"
  license "AGPL-3.0"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.6/sc-v0.0.6-aarch64-apple-darwin.tar.gz"
    sha256 "f307dfd221e667564b88509d63e850ae2a4790037fc755cc535be12e600b752c"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.6/sc-v0.0.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "03b3d08c8e7d81b52afcc241b6a2300ceb57f37f36f1f32af293adb6dd7c94b1"
    else
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.6/sc-v0.0.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd2e36319e2d1645af71b4c37e2fa1c6ce73767ee741540fbe448b2d294d8cef"
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
