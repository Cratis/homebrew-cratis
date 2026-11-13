class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.134.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.134.1/cratis-3.134.1-osx-arm64.tar.gz"
      sha256 "176079b8f95e774c2c6a83dd3989a81d6cda2f9b41bb6b7fcac100acfc0fac6c"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.134.1/cratis-3.134.1-osx-x64.tar.gz"
      sha256 "345f99ac975375877853ab209d2ca3578b3bb1fecfba0c39aa824928b91eac1f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.134.1/cratis-3.134.1-linux-arm64.tar.gz"
      sha256 "2e68687737ca8aec7a9edb38a4a6bc784202ae1f1300b835454ea571b262fc96"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.134.1/cratis-3.134.1-linux-x64.tar.gz"
      sha256 "a118632d2a137dd0febdcf9731d3e1cdd27edfe02022119bc3576bcee751ef85"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
