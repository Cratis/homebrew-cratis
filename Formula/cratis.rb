class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "1.4.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v1.4.0/cratis-1.4.0-osx-arm64.tar.gz"
      sha256 "bea32f410031e93f49606b2bd647e6c35b760dba2797de0c6a5fbf10bded847a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v1.4.0/cratis-1.4.0-osx-x64.tar.gz"
      sha256 "f7f8f5401e11062c9c0cc72e7a3520f83fbde9d405eafcdc9f599b25d6a2b6eb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v1.4.0/cratis-1.4.0-linux-arm64.tar.gz"
      sha256 "0eb8f271d2c5c367d421f419a435dc5ce475f1594970d1c14875963d2433a6c7"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v1.4.0/cratis-1.4.0-linux-x64.tar.gz"
      sha256 "eaf34661fec09e6243ff8b4a772400df84c20ecc48d8935da39e54083ef8dca0"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
