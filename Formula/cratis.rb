class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.110.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.110.0/cratis-3.110.0-osx-arm64.tar.gz"
      sha256 "b813d7220469a6d39774051e1dac9cb60189014f6b08955bc1a7ea941e2204a0"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.110.0/cratis-3.110.0-osx-x64.tar.gz"
      sha256 "60d519ca01cdb56ebbd0a08f15527a1b4c21653c3f0869c7728c3e661d57ab7c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.110.0/cratis-3.110.0-linux-arm64.tar.gz"
      sha256 "a448500b6f222e638a48282b65708d6036f2d9495721a706f82ab8c5a96c273e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.110.0/cratis-3.110.0-linux-x64.tar.gz"
      sha256 "538d30acf9c1fd300a3fec141f3acc80e5470c0afe9f01f06916c5dde1ad09a8"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
