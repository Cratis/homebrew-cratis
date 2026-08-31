class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "2.19.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.19.1/cratis-2.19.1-osx-arm64.tar.gz"
      sha256 "8a2297e99701a170920e8b40973de586ebe209c9fb64330e374a19abc734d600"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.19.1/cratis-2.19.1-osx-x64.tar.gz"
      sha256 "5780e3d6e010246386950651e9ba4975adce140d8f2102f847e9ad856dde0522"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.19.1/cratis-2.19.1-linux-arm64.tar.gz"
      sha256 "0341b1297bdea30406174df6d7e251d023347993657b4e13cccfc8599f97c23a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.19.1/cratis-2.19.1-linux-x64.tar.gz"
      sha256 "a387bf95c6e713f115f160557c58f7194cc3730c30c409787181c3aa64f16980"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
