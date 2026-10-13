class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.56.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.56.0/cratis-3.56.0-osx-arm64.tar.gz"
      sha256 "97c93679f753693cd85e044948b834ec5e600b86c716a9e58d02b2f77975b349"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.56.0/cratis-3.56.0-osx-x64.tar.gz"
      sha256 "cef4f5294a78b4805b88aa1b314b2c6b997a4c9ec51d0233376a71375e61dc4a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.56.0/cratis-3.56.0-linux-arm64.tar.gz"
      sha256 "0a9711d51e3cae7be96a558b822e7e97acb76807448a75418fd7ffd2296495f4"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.56.0/cratis-3.56.0-linux-x64.tar.gz"
      sha256 "24d650410e1f29cbab44ed657341c16fd43523da83aeeb236e80a65d4ad4a9fc"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
