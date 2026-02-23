class Shortcut < Formula
  desc "CLI for the Shortcut project management platform"
  homepage "https://github.com/MrFrydae/Shortcut-CLI"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.16/shortcut-v0.0.16-aarch64-apple-darwin.tar.gz"
      sha256 "41c67c4ed3c09174d1e006cd771f5afdbda1b041a242d675e936df6639ba22db"
    end
    on_intel do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.16/shortcut-v0.0.16-x86_64-apple-darwin.tar.gz"
      sha256 "321a34456602a7e1729958cbf65872ee227082ecdd44d9370954eddd29e94553"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.16/shortcut-v0.0.16-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "770aa4b300adcd3eb69280479331dae873db0f508748e6093fdf61850e38a549"
    end
    on_intel do
      url "https://github.com/MrFrydae/Shortcut-CLI/releases/download/v0.0.16/shortcut-v0.0.16-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "849e48aaa0ab19b0e6ec234072eceee41c43fcf18292fab44c4d58708923f3fc"
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
