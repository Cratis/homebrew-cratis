class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.129.4"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.129.4/direct-runner-3.129.4-osx-arm64.tar.gz"
      sha256 "7fe365d37f2c528922c8e6536e9519865e4dcc22179bd1064f667e28b35abeb3"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.129.4/direct-runner-3.129.4-osx-x64.tar.gz"
      sha256 "692ccd7075d35bf3383d6e23f961d91e244a9b821dc6d56628d4bda865994aa4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.129.4/direct-runner-3.129.4-linux-arm64.tar.gz"
      sha256 "dc04fdae2e030ae95da0feef87b40fa46eeffa1fa247cf97eb4b7ee645602dd0"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.129.4/direct-runner-3.129.4-linux-x64.tar.gz"
      sha256 "2645b1df27e4893dab2cde9b2ad66d0ddd65283e615d9d98fcfaddaebd0e31b7"
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
