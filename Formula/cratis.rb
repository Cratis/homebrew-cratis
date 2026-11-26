class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.154.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.154.0/cratis-3.154.0-osx-arm64.tar.gz"
      sha256 "721660c1021bb8b1e7bb96b504c7cec00c8555dc4106dc58539214bf851efc12"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.154.0/cratis-3.154.0-osx-x64.tar.gz"
      sha256 "44b0618158e2a74be8e722ac986e92e2b8e566340886c446886aadba7f710d7e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.154.0/cratis-3.154.0-linux-arm64.tar.gz"
      sha256 "f561186f777151a40e029e184b2952c1c8e11fa300813a645ca101bb574bca57"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.154.0/cratis-3.154.0-linux-x64.tar.gz"
      sha256 "15049fc178f738270ed4a5270adfcbf402336e17b230f37d6c545638b7d4cf01"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
