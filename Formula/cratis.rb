class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.80.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.80.0/cratis-3.80.0-osx-arm64.tar.gz"
      sha256 "1ecf327f2928682e11ab9fc18d14fae137cb233556850f6ca2d459ab33fe0309"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.80.0/cratis-3.80.0-osx-x64.tar.gz"
      sha256 "b1a09545b7bed44cb6fad4daac3827ba0402b3491b0687381ca38f90be0c8000"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.80.0/cratis-3.80.0-linux-arm64.tar.gz"
      sha256 "fbb5dba5c4602aab8ae5b94c41d29ac856fcc086a97e498e303fc9a2e76eee75"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.80.0/cratis-3.80.0-linux-x64.tar.gz"
      sha256 "23f71feb9104d95be4b6576aed791b467ddbf940e031647fabb8e177adf44150"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
