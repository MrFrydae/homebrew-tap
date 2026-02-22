class Sc < Formula
  desc "CLI for the Shortcut project management platform"
  homepage "https://github.com/MrFrydae/Shortcut-CLI"
  version "0.0.4"
  license "AGPL-3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.4/sc-v0.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "57c7b8b597f04868cb9c1cccf4f72693fc940c514f4900f66e96e40695c1af3d"
    else
      odie "sc requires Apple Silicon (ARM). Intel Macs are not supported."
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.4/sc-v0.0.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d1a4a93e2e90a25ffecbf80f0c772f055ea054eaec73ae3da0b81b027369e7cb"
    else
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.4/sc-v0.0.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "85987771919d2eb769b7e38fe13b34792bb8b9dfbdf212bfbdab171f28fc6eba"
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
