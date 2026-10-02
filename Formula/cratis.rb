class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.24.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.24.0/cratis-3.24.0-osx-arm64.tar.gz"
      sha256 "fd4d155d289c7856734206941ba53f424601959e9c8ace59408fc65cb386c064"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.24.0/cratis-3.24.0-osx-x64.tar.gz"
      sha256 "72e6805625255e779ce58b7a2add5011096efda7bb0baf7f38332251f8856b9e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.24.0/cratis-3.24.0-linux-arm64.tar.gz"
      sha256 "3c23682dd362a8aa197d55738fe409f0cae2a05e9ae62e839ff4173774332628"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.24.0/cratis-3.24.0-linux-x64.tar.gz"
      sha256 "d65c519f0f1872ff6cb02de6e33a3ada28de5130779d7a2097576d3746032498"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
