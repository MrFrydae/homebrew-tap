class Sc < Formula
  desc "CLI for the Shortcut project management platform"
  homepage "https://github.com/MrFrydae/Shortcut-CLI"
  version "0.0.3"
  license "AGPL-3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.3/sc-v0.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "169bc85781e1c8746798e9c7cd2efda6e2f6bc7e5551a371422bc0b78bb747cc"
    else
      odie "sc requires Apple Silicon (ARM). Intel Macs are not supported."
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.3/sc-v0.0.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "56ca2f61ff6accf290cd26e7114968d66e69668ad6d25525e827eddd6d0caabf"
    else
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.3/sc-v0.0.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "12cf701d8ad3ef2b8e1cc2f29f63f9b506ec98ea062bb3a44dde1360176927a6"
    end
  end

  def install
    bin.install "sc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sc --version")
  end
end
