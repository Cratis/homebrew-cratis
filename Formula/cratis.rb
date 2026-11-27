class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.154.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.154.2/cratis-3.154.2-osx-arm64.tar.gz"
      sha256 "d68a5f6891b95dec3a3dc26c008655c97c429059008606c3fb07b6109f72c500"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.154.2/cratis-3.154.2-osx-x64.tar.gz"
      sha256 "bf96a1d84e99cc97c4c282bb535480b4345e41ed1e8542209581a3a4dd877a13"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.154.2/cratis-3.154.2-linux-arm64.tar.gz"
      sha256 "bb5be01527881301c9f8740d0e660bd551f005d9c45c85fff171e305f47f309a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.154.2/cratis-3.154.2-linux-x64.tar.gz"
      sha256 "f7e435f5b0ea268d3319ea6e158ef68cb5d18cb1241d70ceafca4fdbd7d64189"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
