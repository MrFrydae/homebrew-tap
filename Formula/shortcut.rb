class Shortcut < Formula
  desc "CLI for the Shortcut project management platform"
  homepage "https://github.com/MrFrydae/Shortcut-CLI"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.12/shortcut-v0.0.12-aarch64-apple-darwin.tar.gz"
      sha256 "1aadbed82d02ada722c5a5640d48d3bdbd02be23bdd429513741d47124b61d24"
    end
    on_intel do
      disable! date: "2026-02-22", because: "this formula is only available for Apple Silicon"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.12/shortcut-v0.0.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "067cc029391be2c922401b18048cae2bc553250cd091a8833beaffceb086fb23"
    end
    on_intel do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.12/shortcut-v0.0.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15ba45ac125abc3e98c291593bb6775feeef4612537cc76a454444feb22ffb80"
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
