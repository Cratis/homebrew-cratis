class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.28.4"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.28.4/cratis-3.28.4-osx-arm64.tar.gz"
      sha256 "7101a8755b6abf49b74e6445c8700d73a9fd3375ab3d4b5a5ec0de5f3cd47283"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.28.4/cratis-3.28.4-osx-x64.tar.gz"
      sha256 "832d951171a789c95a5c258bbeeac19965495b28b00c26a497c5d327631d0c3e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.28.4/cratis-3.28.4-linux-arm64.tar.gz"
      sha256 "610f22b4f09eace29615eee8da3d8ea16bc35bf7da174def3c117020775c4c62"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.28.4/cratis-3.28.4-linux-x64.tar.gz"
      sha256 "d5972a9d47c363d4dbeee645082da188f87aac5934fe38afcc0e9b92a5be6592"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
