class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.11.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.11.0/cratis-2.11.0-osx-arm64.tar.gz"
      sha256 "c5446f71241bd14a72a81aef9fe46ec4a0e217fa636712d8fe491c4b03923efe"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.11.0/cratis-2.11.0-osx-x64.tar.gz"
      sha256 "a4f8b25e93764bedd25e3abc572717c907a999c7a2a21a7fb99a465d4680f896"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.11.0/cratis-2.11.0-linux-arm64.tar.gz"
      sha256 "d4017a4b53113c7e1a2c637d744c96cc854fb107c8fa8ea9dfbcd57b80dd2692"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.11.0/cratis-2.11.0-linux-x64.tar.gz"
      sha256 "557600f3eff25f84a2171289705500ebbe7d249a8fddd1c4e91d68b25e506045"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
