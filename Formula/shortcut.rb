class Shortcut < Formula
  desc "CLI for the Shortcut project management platform"
  homepage "https://github.com/MrFrydae/Shortcut-CLI"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.20/shortcut-v0.0.20-aarch64-apple-darwin.tar.gz"
      sha256 "3f7e2c28e4e6eb67f68f2d74e2e6056180bd6cdd63f004b9b89a2f30178e2a51"
    end
    on_intel do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.20/shortcut-v0.0.20-x86_64-apple-darwin.tar.gz"
      sha256 "4dda3dd22decfb8f822449eb317c078968632c75fa78d733e300ef63e0f95f2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.20/shortcut-v0.0.20-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1164175dcae7f76d69ac4efd67060edfa2d99ed26a797b0c7e30d1bb85aea631"
    end
    on_intel do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.20/shortcut-v0.0.20-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4daac65546740a3a29e0681cf5ae1a38c70774961208ce1525c833b7782e45d8"
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
