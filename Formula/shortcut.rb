class Shortcut < Formula
  desc "CLI for the Shortcut project management platform"
  homepage "https://github.com/MrFrydae/Shortcut-CLI"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.19/shortcut-v0.0.19-aarch64-apple-darwin.tar.gz"
      sha256 "b2ced2cfb4221e461f401004bb2125d34a607b1865cf23566c6fb365827e7025"
    end
    on_intel do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.19/shortcut-v0.0.19-x86_64-apple-darwin.tar.gz"
      sha256 "75b47df2b1cd3cfa8ca246fe104b07eb8c471ab061020f6486bf2a25a2ac1467"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.19/shortcut-v0.0.19-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ed404cc213339181f3f252d4ba6b1f1665d9221a8894e180e044c50f9ddbb8c1"
    end
    on_intel do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.19/shortcut-v0.0.19-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b1308b8193fca82bdfde473a496b509dc40d6700acc3314270537403583df937"
    end
  end

  def install
    bin.install "shortcut"

    generate_completions_from_executable(bin/"shortcut", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shortcut --version")
  end
end
