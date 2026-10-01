class Pushrsh < Formula
  desc "Send push notifications to your iPhone from the shell"
  homepage "https://pushr.sh"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cpreston321/homebrew-tap/releases/download/pushrsh-v0.1.0/pushrsh-0.1.0-darwin-arm64.tar.gz"
      sha256 "7bd221386554faff33fd437ae312033e254bc1b1e9de8420850ffd056806c11e"
    end
    on_intel do
      url "https://github.com/cpreston321/homebrew-tap/releases/download/pushrsh-v0.1.0/pushrsh-0.1.0-darwin-x64.tar.gz"
      sha256 "e969eb58f16d587057c5966b37af2364414f90dd3be2276971afe3e598f02aa8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cpreston321/homebrew-tap/releases/download/pushrsh-v0.1.0/pushrsh-0.1.0-linux-arm64.tar.gz"
      sha256 "6eab289233225c7b25dac8897598517ae55933639f45206b875d2d77b8b4f594"
    end
    on_intel do
      url "https://github.com/cpreston321/homebrew-tap/releases/download/pushrsh-v0.1.0/pushrsh-0.1.0-linux-x64.tar.gz"
      sha256 "a94fa00254629bbca66137dc38d234114f8029d442ba51635b83e48124b56258"
    end
  end

  def install
    bin.install "pushrsh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pushrsh --version")
  end
end
