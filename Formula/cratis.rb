class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.136.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.136.0/cratis-3.136.0-osx-arm64.tar.gz"
      sha256 "ebbda99d10bd14cc3e5dd6b4a8145f0cb0a5f5ca9dd0fb1f2f5697df8d2359e0"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.136.0/cratis-3.136.0-osx-x64.tar.gz"
      sha256 "f4a4162fe57503ae40a79b5799ce81323f6693404864cf92c4144cbeecd6ad01"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.136.0/cratis-3.136.0-linux-arm64.tar.gz"
      sha256 "006c63c0c2533811157b7829c7314dd255303fe6b75c97eddd8bd1675d0436b7"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.136.0/cratis-3.136.0-linux-x64.tar.gz"
      sha256 "3b1f06f264b51df6179c7b8cf4bccfb565cee049b50da4c48f379868bab43694"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
