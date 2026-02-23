class Shortcut < Formula
  desc "CLI for the Shortcut project management platform"
  homepage "https://github.com/MrFrydae/Shortcut-CLI"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.17/shortcut-v0.0.17-aarch64-apple-darwin.tar.gz"
      sha256 "42092172772392986415fa306633480a8aaafb3848e684acdb0d1c8ccb2c8dec"
    end
    on_intel do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.17/shortcut-v0.0.17-x86_64-apple-darwin.tar.gz"
      sha256 "9cf2325d24eaa18a7a8a3fec1644c60d480656fc37f8ec59c54f16736561379e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.17/shortcut-v0.0.17-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "62d1855af4947c64d018c0db45656c2cb5a30c28b8bbb17d79f66a98eabc281f"
    end
    on_intel do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.17/shortcut-v0.0.17-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d158223a96e81f5975d27f7ec0bf6c9a9f8948b2e9d080caa5b882eafee13793"
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
