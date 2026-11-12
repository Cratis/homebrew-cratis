class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.71.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.71.0/direct-runner-3.71.0-osx-arm64.tar.gz"
      sha256 "2993af0db4748097823cfbdb9e54b1534a057f9bb93e220d5fd6fa8df02a135c"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.71.0/direct-runner-3.71.0-osx-x64.tar.gz"
      sha256 "85397b8af165636f56acc5e07d2b2f78463b78247d2d2d8827017fffec2f7d70"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.71.0/direct-runner-3.71.0-linux-arm64.tar.gz"
      sha256 "b122333bde39aa3127d65a1370eaba779cf338673b3eb9f8c67d5b374442d723"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.71.0/direct-runner-3.71.0-linux-x64.tar.gz"
      sha256 "887af9dcaa166ec1578930aca5c2e56d68559258f89ac72dcdaa216f97f84e09"
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
