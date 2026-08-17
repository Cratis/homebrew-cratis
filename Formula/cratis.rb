class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.8.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.8.2/cratis-2.8.2-osx-arm64.tar.gz"
      sha256 "ab15cc256f0979b8ac72029a6d5ec033b0d9c71411c54eaa179c227a3a61614f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.8.2/cratis-2.8.2-osx-x64.tar.gz"
      sha256 "ca1130929beaa91f1c7869e7107ed903eba6c467d4a38554a95553fca6d6f753"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.8.2/cratis-2.8.2-linux-arm64.tar.gz"
      sha256 "e7ecf68dedfc2fedcd1c1a9a0bb3af52e6c8ef50093dfe8ecd21b28515a4a954"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.8.2/cratis-2.8.2-linux-x64.tar.gz"
      sha256 "b82ec2e0d13129e2c1eaeb49a4194bed50efafcf7c4833281d209b61dfdbb9b4"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
