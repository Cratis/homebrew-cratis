class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.8.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.8.0/cratis-3.8.0-osx-arm64.tar.gz"
      sha256 "e7295ae4063d0e9f91f8723b88856f87554aecec8e2225b457187e8806a826a0"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.8.0/cratis-3.8.0-osx-x64.tar.gz"
      sha256 "9b619732f1eddbaefee6f48db4accc51d2e1ff7ba77632eadd94cbb8d28cb6cf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.8.0/cratis-3.8.0-linux-arm64.tar.gz"
      sha256 "4087d62770d390325cde0e008c4703d7fdc4ec74a6f20963d2b011be887b7bc1"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.8.0/cratis-3.8.0-linux-x64.tar.gz"
      sha256 "69667f19c1dd17e43b642664487eafeb2292dff7b7e9ed2d311b004d6fe4c9aa"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
