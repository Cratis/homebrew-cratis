class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.116.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.116.1/direct-runner-3.116.1-osx-arm64.tar.gz"
      sha256 "6c675b04a29cc8ef24fa310836c61aaaaf7fe774e5b0fd76722c82b4786b02ca"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.116.1/direct-runner-3.116.1-osx-x64.tar.gz"
      sha256 "15fb2c6f44048a7ab424b9b065f87d319c41678ce4cbd572967813c5a6fa0b92"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.116.1/direct-runner-3.116.1-linux-arm64.tar.gz"
      sha256 "329041bd072e7d9e95abc5b5095ce5fe13706b7ba8795bf6c342df34b4eb9765"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.116.1/direct-runner-3.116.1-linux-x64.tar.gz"
      sha256 "2e45e3644f98c7943e5f821a681f5c4ed16389d6f543f09f026ad3031f407ce0"
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
