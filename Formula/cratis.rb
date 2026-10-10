class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.44.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.44.0/cratis-3.44.0-osx-arm64.tar.gz"
      sha256 "ae04fb63cbed572918fa14aa8d9b5bd1784b5b1157157414c4b6a5f8b8f04e22"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.44.0/cratis-3.44.0-osx-x64.tar.gz"
      sha256 "63083066f077b06a13f63e16791817271596f215f27a6dc254606b40a2428edd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.44.0/cratis-3.44.0-linux-arm64.tar.gz"
      sha256 "9eb66401d5ae137ab128423fe5f222a5f9014d6d2babb040a8886db5e78c4f71"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.44.0/cratis-3.44.0-linux-x64.tar.gz"
      sha256 "e4e666bf839645a32e58d8b66d8df13be67a73100233741be428da8d78e8a7da"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
