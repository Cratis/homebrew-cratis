class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.25.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.25.0/cratis-3.25.0-osx-arm64.tar.gz"
      sha256 "40d466e7d466210b36ce2a1a6e77ff5850efca79d6009f8478d0912b89426ee4"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.25.0/cratis-3.25.0-osx-x64.tar.gz"
      sha256 "68975e6fe28864ad8a46e88a927d2e334dd705dbdc20577ff654dbef874522fd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.25.0/cratis-3.25.0-linux-arm64.tar.gz"
      sha256 "6a8d7a0006e94ad61caf9f8b24e15cb09f50d99794ed7289c776f31f97f124be"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.25.0/cratis-3.25.0-linux-x64.tar.gz"
      sha256 "12010ffb4bbe9fb5ef06c4f548a7c2b2479625b1286932ec2989cc8bb908ced3"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
