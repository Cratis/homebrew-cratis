class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.16.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.16.1/cratis-2.16.1-osx-arm64.tar.gz"
      sha256 "d8eb065c9b49c860d6b02517b7c02195c951ef26ef6f462961b418afefbd69ec"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.16.1/cratis-2.16.1-osx-x64.tar.gz"
      sha256 "c29cd0df93a3af37d91552737e39bdb0017e70dd3e7041c2cd8679709030e3e8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.16.1/cratis-2.16.1-linux-arm64.tar.gz"
      sha256 "82f7551ad76b1a396fb55ce5de1f45d9dcf7bb0cb1ea63d881e166e5c9545e7f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.16.1/cratis-2.16.1-linux-x64.tar.gz"
      sha256 "c7a92307d9842a53fc4e7ec4519cd62e9d702fb9075696b28f98661b556706c6"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
