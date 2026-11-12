class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.130.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.130.0/cratis-3.130.0-osx-arm64.tar.gz"
      sha256 "dca386c4f14e58e489eaf93c4565029216fd4fdbe8cc497c00ad7426b43f081f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.130.0/cratis-3.130.0-osx-x64.tar.gz"
      sha256 "8ae91ee38ef0a4800d7b30ce27b04d64e03795fc1b3d355f0d5c90ae2a606436"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.130.0/cratis-3.130.0-linux-arm64.tar.gz"
      sha256 "021c2eef8f554305d99eb9084343a2c3128a620f4e891b08fc1f6db84322c68f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.130.0/cratis-3.130.0-linux-x64.tar.gz"
      sha256 "6a23b1ef83bacf3edfe679832951ba4c17d6641442b106236ac19eb4272f7441"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
