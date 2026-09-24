class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.17.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.17.1/cratis-3.17.1-osx-arm64.tar.gz"
      sha256 "fbabca3ba702774280dea02083fe987a7c8c65508864bcc91b395fdb4f56ad1e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.17.1/cratis-3.17.1-osx-x64.tar.gz"
      sha256 "299de42f7b0e98bc23ecc35a2559d3d638d3385ca8d4bc9787243b88154d728f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.17.1/cratis-3.17.1-linux-arm64.tar.gz"
      sha256 "5948bb3f94cc9a3c0cc37f1c991967468cc8f8048d6e61e18eb563eb237c678e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.17.1/cratis-3.17.1-linux-x64.tar.gz"
      sha256 "6854f37cfd032a2d15d622f99a163e0d23ff0120c1d7ad0750399c968e29cb20"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
