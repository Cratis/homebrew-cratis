class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.53.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.53.1/cratis-3.53.1-osx-arm64.tar.gz"
      sha256 "9a0db29277487da313e2be3a725464bce65fcbb86c7b5fdc7297bd0c62c60039"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.53.1/cratis-3.53.1-osx-x64.tar.gz"
      sha256 "005ff916045cbb593c7980e9d4272c63967360ca16e1c2eb53c728c22130f466"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.53.1/cratis-3.53.1-linux-arm64.tar.gz"
      sha256 "6c6a3b9a9f74e5106af04e34e1b7510334744ba9afeb3a0b83db562a9368481f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.53.1/cratis-3.53.1-linux-x64.tar.gz"
      sha256 "2e6b3f75425f0db0351940da5c13832a383e9f413d0d4b3614f4a9905b280744"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
