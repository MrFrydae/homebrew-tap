class Sc < Formula
  desc "CLI for the Shortcut project management platform"
  homepage "https://github.com/MrFrydae/Shortcut-CLI"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.9/sc-v0.0.9-aarch64-apple-darwin.tar.gz"
      sha256 "73d064566910bba675c3e994711234a0c53ecbdef27b7c848a45a6e6de13740e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.9/sc-v0.0.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8f015826914096632582882bc6bc5ff89751af56f3d6df461c251df02c68b4e0"
    end
    on_intel do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.9/sc-v0.0.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "38a55977618315080c4a13086a117323c522466ea4064ed5eaf09846e1a47119"
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
