class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.13.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.13.0/cratis-3.13.0-osx-arm64.tar.gz"
      sha256 "b53aee6a903bd07073deb7174efde8122f426f51b744cf7c3e74e4aa7b0d2733"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.13.0/cratis-3.13.0-osx-x64.tar.gz"
      sha256 "b955aaab480376abbbc7d4e86a5776d453e34fb88cff1090a8ba13bd4f5e9466"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.13.0/cratis-3.13.0-linux-arm64.tar.gz"
      sha256 "795bacfd723f081ed36b5c3689f07fa2ba203d7060b4153479445bd78c919d05"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.13.0/cratis-3.13.0-linux-x64.tar.gz"
      sha256 "033efdb91b9bd5a3b31072ceb82520009cadb509ad249213b0572c6cf311d609"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
