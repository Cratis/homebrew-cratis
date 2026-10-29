class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.110.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.110.1/cratis-3.110.1-osx-arm64.tar.gz"
      sha256 "7d1af10b1f422a97bc5579e65c97993ad6508443c7be29d84db2b9432ff4fbf5"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.110.1/cratis-3.110.1-osx-x64.tar.gz"
      sha256 "83ccfa4f14baee44aa9ed59dd4489b88176c3d0005581f61bd4ffcf0de96f82c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.110.1/cratis-3.110.1-linux-arm64.tar.gz"
      sha256 "524a9b531aa3f465dc6c9342b46282e02f1dee4e304a50912f7bbcc43e99c132"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.110.1/cratis-3.110.1-linux-x64.tar.gz"
      sha256 "d456ef447d81c98023332b8cf95bebcead332b3d51e97468965f5d1fc09aba68"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
