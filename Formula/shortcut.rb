class Shortcut < Formula
  desc "CLI for the Shortcut project management platform"
  homepage "https://github.com/MrFrydae/Shortcut-CLI"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.15/shortcut-v0.0.15-aarch64-apple-darwin.tar.gz"
      sha256 "089b3e9a136e074eda46f1a28641d363236bdb26548e95bd9eb33b81d9794d7d"
    end
    on_intel do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.15/shortcut-v0.0.15-x86_64-apple-darwin.tar.gz"
      sha256 "61f138c1b5d5f71c79e7adb09366df9da879aff7a5fd8602d8deef7f2be9c36d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.15/shortcut-v0.0.15-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "408c1914cd8d698ad16947b9102dbe4b93857854255f865d9874bc4376bdf6d9"
    end
    on_intel do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.15/shortcut-v0.0.15-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "02d2d82d31a55313149bb6e3337a7c5d2075a4bd605a45243e88eee9408151ba"
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
