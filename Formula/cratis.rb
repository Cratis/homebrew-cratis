class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.17.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.17.0/cratis-3.17.0-osx-arm64.tar.gz"
      sha256 "a974cd3003dddf44bcfe66468c5dc9f97816393a551eefbcde0196b39f45288c"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.17.0/cratis-3.17.0-osx-x64.tar.gz"
      sha256 "218970405b5e93cdcc43d4fdbace3c1192b4aa7cb0e67ffa3ab8e0bdbf9240bb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.17.0/cratis-3.17.0-linux-arm64.tar.gz"
      sha256 "19f7393c75519319eb789855eac9c20526cdce1e0fca1a5472e041f02f678a71"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.17.0/cratis-3.17.0-linux-x64.tar.gz"
      sha256 "391a93212ad68c1ad6443065fcd155b00761cbe1eb1d5ebc68ce7030bd551124"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
