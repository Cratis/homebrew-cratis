class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "1.3.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v1.3.0/cratis-1.3.0-osx-arm64.tar.gz"
      sha256 "65227c28d32e03b966bcc51e38ed8c99109532bde11e7045ea7c897e6aa08814"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v1.3.0/cratis-1.3.0-osx-x64.tar.gz"
      sha256 "1c79aeb5f4b63020c0453403f07de392c6bae5f9e579ec01838085ea7b6272df"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v1.3.0/cratis-1.3.0-linux-arm64.tar.gz"
      sha256 "6a04ebd46be47035e5d0a74d65f96d1f67e891db2fb20fd6e8c30719803e3868"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v1.3.0/cratis-1.3.0-linux-x64.tar.gz"
      sha256 "b62f7693ddb4144ef913b96c46d3f0e2fde3c2a019e608ad3e38acf483903fa4"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
