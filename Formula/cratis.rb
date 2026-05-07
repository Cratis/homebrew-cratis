class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "1.2.7"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v1.2.7/cratis-1.2.7-osx-arm64.tar.gz"
      sha256 "ab4c7a0ffe57f275c3d29561bf5260520e6d32aef4a32dc2cb4d3c55d026e1c8"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v1.2.7/cratis-1.2.7-osx-x64.tar.gz"
      sha256 "7ba2558ca58c7f6a7670bf044703084203478f033f86a04a2fbfd09b0b9b9fd8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v1.2.7/cratis-1.2.7-linux-arm64.tar.gz"
      sha256 "2866779d34c0ebdf44d50dd7958c06c406ba85eff3423b482307a8afe49a7108"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v1.2.7/cratis-1.2.7-linux-x64.tar.gz"
      sha256 "7470423f2f84685cea9d2edb55f579131cb564436b3ef342fe61b3a881027315"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
