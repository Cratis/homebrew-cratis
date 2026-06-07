class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "1.6.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v1.6.1/cratis-1.6.1-osx-arm64.tar.gz"
      sha256 "d38e65f3c50cc01f9f0e7ff8fc2cb411341628873122ad34d81af7f22c849e9d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v1.6.1/cratis-1.6.1-osx-x64.tar.gz"
      sha256 "70ea3cc1a83da0d9acfdb8f05e32b01bc1352157ccb1e158cd8aac3278d6b19c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v1.6.1/cratis-1.6.1-linux-arm64.tar.gz"
      sha256 "dae347675215f9a62e53ab680bf41d2687766f4c7afc0fc8d6aaadbcee9e0362"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v1.6.1/cratis-1.6.1-linux-x64.tar.gz"
      sha256 "5c609fb93c9263136a571dbb40db22231bb8853446b6cf2e1ac6ce0348db897d"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
