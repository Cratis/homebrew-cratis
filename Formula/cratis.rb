class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.140.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.140.1/cratis-3.140.1-osx-arm64.tar.gz"
      sha256 "4ce62d2e101bda9bc35e38e8308d056d56c739bca6219d60cb260c3a4d08fd3e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.140.1/cratis-3.140.1-osx-x64.tar.gz"
      sha256 "7248d651e175b08554c02f7cc99126bc28652380fe7652a65c3c19a51ef51379"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.140.1/cratis-3.140.1-linux-arm64.tar.gz"
      sha256 "944df71e7af60f175d11a38fc2ee5d57a8ed16dbab92f7e3f6a25c44fc752305"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.140.1/cratis-3.140.1-linux-x64.tar.gz"
      sha256 "f472e6a1403139533cd651fb1ec528136a2fc06251abae1e5b2c0e722bd918e8"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
