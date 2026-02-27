class Shortcut < Formula
  desc "CLI for the Shortcut project management platform"
  homepage "https://github.com/MrFrydae/Shortcut-CLI"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.21/shortcut-v0.0.21-aarch64-apple-darwin.tar.gz"
      sha256 "46abbbe6bc78e854edfcfb1a3ca99960f2fb4eb8917f23a95353d6fbce5ca888"
    end
    on_intel do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.21/shortcut-v0.0.21-x86_64-apple-darwin.tar.gz"
      sha256 "3dc528142ba18e1e05b808683802a51a973033f2078364d38ed200d6f6edc70c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.21/shortcut-v0.0.21-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "20a7eaa003b7e9c49d4c74932ae23a91f6dc18796aeec2c3cfdd08e8dc09bfb9"
    end
    on_intel do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.21/shortcut-v0.0.21-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a5e768e97546b33a30b8dba381d6d3cbee7fc1b7056371610a26924f1a0849d6"
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
