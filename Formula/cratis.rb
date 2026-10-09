class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.40.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.40.2/cratis-3.40.2-osx-arm64.tar.gz"
      sha256 "50834b940c84ac1bca7ea80679224e5fb06956e6b91efefd0ca953671ec967e1"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.40.2/cratis-3.40.2-osx-x64.tar.gz"
      sha256 "dbd5a38f0715ae0cdedea63edf822394915a7f50c50b45eac6ccc8d59fb15561"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.40.2/cratis-3.40.2-linux-arm64.tar.gz"
      sha256 "b05a34c03304a31efc827402502dafe48797bbbbf80719771aa1a952c053055b"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.40.2/cratis-3.40.2-linux-x64.tar.gz"
      sha256 "ede9fb11eb19d86dc80efa0148c9e91fe4555a9cca112583cdcb4e30d0548dad"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
