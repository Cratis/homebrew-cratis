class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.9.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.9.0/cratis-2.9.0-osx-arm64.tar.gz"
      sha256 "e144d7edf3c1be5598212ea1815ae168e1afb9dc591fffc37b96f16c7520d86f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.9.0/cratis-2.9.0-osx-x64.tar.gz"
      sha256 "1e7d7e85e5af99f6b03711cca8829865c5974781e44d693b92a3aae33fae7005"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.9.0/cratis-2.9.0-linux-arm64.tar.gz"
      sha256 "917c6f704a88bd86f24954cb0c719aad05f25868509cdf9f7da7b82b974de556"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.9.0/cratis-2.9.0-linux-x64.tar.gz"
      sha256 "2de0701d447660bc5897f5817aec7147d6517e2396f37697dd28e52e075e3d28"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
