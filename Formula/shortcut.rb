class Shortcut < Formula
  desc "CLI for the Shortcut project management platform"
  homepage "https://github.com/MrFrydae/Shortcut-CLI"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.14/shortcut-v0.0.14-aarch64-apple-darwin.tar.gz"
      sha256 "0cfca5fac33698e0c2eb2ed77dc6984a1139f01c677f08854535f676b7f370e9"
    end
    on_intel do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.14/shortcut-v0.0.14-x86_64-apple-darwin.tar.gz"
      sha256 "bd2d14692840abfe8492de006ab30d5107a52bd5221eefbe65ef46e270476a5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.14/shortcut-v0.0.14-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "640b9cc04c9d4c6e1d13f23aa2248284823c45566a52290d820ee396efa90c96"
    end
    on_intel do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.14/shortcut-v0.0.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "89a640d97dd0eab67b69a1b85b02994d054fb350e8952e9a0e372925dca7ffbf"
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
