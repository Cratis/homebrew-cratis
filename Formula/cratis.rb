class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.41.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.41.1/cratis-3.41.1-osx-arm64.tar.gz"
      sha256 "041eb6df6d537d1cfbe7e8fb72b85afb8d7601bbacfbf72f2c0b25aed2ad1e6a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.41.1/cratis-3.41.1-osx-x64.tar.gz"
      sha256 "83d81da41f4086f0a96175d5d837edf2bbd9ce87e52fd4b18a18a212f781f224"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.41.1/cratis-3.41.1-linux-arm64.tar.gz"
      sha256 "03d4d55d2705c5b318364018aac8137d9e9986ad256d337ad41f17ab3b0bdd31"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.41.1/cratis-3.41.1-linux-x64.tar.gz"
      sha256 "4ee6fb3cd6602385e39f6ed5ecbfdc72ca0d3517876b8cf0277f04f03feded32"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
