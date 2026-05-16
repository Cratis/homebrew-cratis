class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "1.4.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v1.4.2/cratis-1.4.2-osx-arm64.tar.gz"
      sha256 "19a707cb7c2e83e794550d1c87e961ae7bf51f813f74d756a73e8442f26e12b0"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v1.4.2/cratis-1.4.2-osx-x64.tar.gz"
      sha256 "fe85ed856e5f85037102ca9881575c2bff918cfdc2f0a1f31f6ec99125645d4e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v1.4.2/cratis-1.4.2-linux-arm64.tar.gz"
      sha256 "876269ad4f0dfd182797c2534283736e1acd63eced4e9723fb46c063ba70befc"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v1.4.2/cratis-1.4.2-linux-x64.tar.gz"
      sha256 "f8c506e4bc89a5e2e0c8f93ce98bb575cba200f7d7cb520d85ec0a36e93d5472"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
