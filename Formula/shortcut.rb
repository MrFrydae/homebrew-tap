class Shortcut < Formula
  desc "CLI for the Shortcut project management platform"
  homepage "https://github.com/MrFrydae/Shortcut-CLI"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.18/shortcut-v0.0.18-aarch64-apple-darwin.tar.gz"
      sha256 "7b5e5fcab32462061ee8b03b1a1b98a566088520a796ccf365d62e4200bb420f"
    end
    on_intel do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.18/shortcut-v0.0.18-x86_64-apple-darwin.tar.gz"
      sha256 "f70359ca5a312437afbada0e87304a87a165069a3361feec6af8d5f2098f1bcc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.18/shortcut-v0.0.18-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b2dcbb467806d0081a3437d77e19d8d07d9104b502d778150988b1062b37d1db"
    end
    on_intel do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.18/shortcut-v0.0.18-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "92cf7d9b9e10b11ee0403ad3386c391deb2f5c16ffa66df84bff5345d16fb8ff"
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
