class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.61.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.61.1/cratis-3.61.1-osx-arm64.tar.gz"
      sha256 "b7880e1d9627b71853e3943d080ee0cd5a688c6c729045752365b66372257203"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.61.1/cratis-3.61.1-osx-x64.tar.gz"
      sha256 "a975d2ef67be569f0380012de0fc8e59d2452ab1aed167f1423af78c726cc133"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.61.1/cratis-3.61.1-linux-arm64.tar.gz"
      sha256 "5492dd2d309be8af55a4f8e3abc90bdcaa0bd3f210270a74484126a821079949"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.61.1/cratis-3.61.1-linux-x64.tar.gz"
      sha256 "ba2d42469fad35603a4d5e08f75898d968fe0adc65543be3cb2bca638b2a0aab"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
