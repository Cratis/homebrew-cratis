class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "1.3.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v1.3.1/cratis-1.3.1-osx-arm64.tar.gz"
      sha256 "5489750adb6f0046e250f92b94a47a24b8ed9bf18a9dda34a0b1ec4299d8f8d1"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v1.3.1/cratis-1.3.1-osx-x64.tar.gz"
      sha256 "ed89085ad36862cf865d819c20817d8e344f2f7d46ff0baedf8844545bed6e79"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v1.3.1/cratis-1.3.1-linux-arm64.tar.gz"
      sha256 "d13aaf80296276644e76ddd3b3eb54ed844d4a3fe837a3b5b3e73fb76550c190"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v1.3.1/cratis-1.3.1-linux-x64.tar.gz"
      sha256 "02657455d62f9aacaa630194ee2735993816635bbe21ec26a08c232f906c5aa8"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
