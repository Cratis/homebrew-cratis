class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.22.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.22.0/cratis-3.22.0-osx-arm64.tar.gz"
      sha256 "20fe3eae39171d90f2cefee1debd301a26c14b492b4ea81ebc20af2ef164fd9e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.22.0/cratis-3.22.0-osx-x64.tar.gz"
      sha256 "3c8729562dffedbb63bafb5512f9138b005fa3b49cc424bcd6f3cfa356a049a3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.22.0/cratis-3.22.0-linux-arm64.tar.gz"
      sha256 "d042df64ceecaf0fb7e53d421d7e2873d3c9a651eb0471487134513f27480a2f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.22.0/cratis-3.22.0-linux-x64.tar.gz"
      sha256 "46caaf2cdbeb371159dcdcd76976478cac18d27af5771f1f9a7facd2bb24199c"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
