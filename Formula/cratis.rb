class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.154.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.154.1/cratis-3.154.1-osx-arm64.tar.gz"
      sha256 "833f1bb22f3eeee2bca15511b63c65daebbcd0dcb09a2c4460fef56a04054637"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.154.1/cratis-3.154.1-osx-x64.tar.gz"
      sha256 "fe4ea78ac4b1e82b97f5dfc54f63274fb1f274577811f22d8e1b762223afc3d0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.154.1/cratis-3.154.1-linux-arm64.tar.gz"
      sha256 "9568c187c85d832900b11bafa0537c629a8091de81206e2a7e6e43afa3a24b5f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.154.1/cratis-3.154.1-linux-x64.tar.gz"
      sha256 "6b646c8864f7738316ba9b8aa7078fc2b5409b04a7ecfc9910aa9b9f8caa31d7"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
