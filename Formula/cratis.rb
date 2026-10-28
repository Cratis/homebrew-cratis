class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.109.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.109.0/cratis-3.109.0-osx-arm64.tar.gz"
      sha256 "be39ef5038ac164bc4b15f47fcef3a9664c97be6894ef229afe5d51ffd567c1e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.109.0/cratis-3.109.0-osx-x64.tar.gz"
      sha256 "b67767d47fab6de3aa7f4cdb2f70835c8c431d0bbf310195ad36c692c774ab25"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.109.0/cratis-3.109.0-linux-arm64.tar.gz"
      sha256 "68ffb41bdf1969c58b07b54e7cd94532e8ac86342497ec32cfc7f12457260cba"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.109.0/cratis-3.109.0-linux-x64.tar.gz"
      sha256 "4ca0c53764075ba59fe8b759ad4335d150717df4e392b7546a01b911973c6494"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
