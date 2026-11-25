class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.150.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.150.1/cratis-3.150.1-osx-arm64.tar.gz"
      sha256 "3856fccb6319a1734ac2c2baac13346747fdb6228cf17e4cc857b06e13022a3b"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.150.1/cratis-3.150.1-osx-x64.tar.gz"
      sha256 "fb967cb2cda0ac4396800a9c980a20f542b394c2cab0be147a11613623c71b0f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.150.1/cratis-3.150.1-linux-arm64.tar.gz"
      sha256 "4bbcc115d9229ef13dcd340037bbcc19c083707cd34c71072f15f069565a8a11"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.150.1/cratis-3.150.1-linux-x64.tar.gz"
      sha256 "107d53c05876842f0b37860d4d61c3012b4aeb5586cacf91b0cd3e3c97286c07"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
