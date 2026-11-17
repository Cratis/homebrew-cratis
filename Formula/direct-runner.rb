class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.127.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.127.1/direct-runner-3.127.1-osx-arm64.tar.gz"
      sha256 "0c41c629196c3270b68d1a7cfeddfe63134380d648fd483f1d869f5b3469c29e"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.127.1/direct-runner-3.127.1-osx-x64.tar.gz"
      sha256 "a7894e93157a0a00f1414e26f98d247bd022198ef259238ee798a88dbf1373df"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.127.1/direct-runner-3.127.1-linux-arm64.tar.gz"
      sha256 "1aba2648c215e93d77ce7a8e0b06814b5974ad0b8b2acfabebc1a11de70520b1"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.127.1/direct-runner-3.127.1-linux-x64.tar.gz"
      sha256 "65e99fcd15ed9fb6e3d8ffae348829dc6f9a45354077a023b662eca38c065329"
    end
  end

  def install
    bin.install "direct-runner"
  end

  service do
    run [opt_bin/"direct-runner"]
    keep_alive true
    log_path var/"log/direct-runner.log"
    error_log_path var/"log/direct-runner.log"
  end
end
