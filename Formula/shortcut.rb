class Shortcut < Formula
  desc "CLI for the Shortcut project management platform"
  homepage "https://github.com/MrFrydae/Shortcut-CLI"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.13/shortcut-v0.0.13-aarch64-apple-darwin.tar.gz"
      sha256 "82dc1ca324916a4e0c7c7e90fd9340c4caf15a427dca9fd2b198a8229988554e"
    end
    on_intel do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.13/shortcut-v0.0.13-x86_64-apple-darwin.tar.gz"
      sha256 "adaae03e5625f8cf31b8323da0012a4b0f5163e85e527da72a22cf6ff8b1a121"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.13/shortcut-v0.0.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2527923362c22b89525d867e73c064358e3ee860dd188092a3b532fde4691cf6"
    end
    on_intel do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.13/shortcut-v0.0.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "63583ec9a99a96f2dcc305d8c782b76db91c849a494d7b3a5144b02f8e31b93d"
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
