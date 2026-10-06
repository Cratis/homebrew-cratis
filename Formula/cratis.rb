class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.28.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.28.0/cratis-3.28.0-osx-arm64.tar.gz"
      sha256 "282daee104b12c3aa503c0e711df3ba676dd8a91ad0063eadad1003013ce9633"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.28.0/cratis-3.28.0-osx-x64.tar.gz"
      sha256 "514517c8ac84ab9afbd0d922366727c330131fbb74928b586adf4a0a2ef2dd05"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.28.0/cratis-3.28.0-linux-arm64.tar.gz"
      sha256 "f46fc9ece9ced2cb0fdcd0382d3682f473351d45dcfc6299aee9a3032c7b525a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.28.0/cratis-3.28.0-linux-x64.tar.gz"
      sha256 "2cf86b10fb1c1caff9755e6de03e43684104a77bfd3804092f3b59223e1bb394"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
