class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.40.3"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.40.3/direct-runner-3.40.3-osx-arm64.tar.gz"
      sha256 "5166a97e2506890f1c54ee3878105be534e98538c3f19204879d185fb81f45c5"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.40.3/direct-runner-3.40.3-osx-x64.tar.gz"
      sha256 "d2e70b2e982ccea740de39f92e924a3166cc05d8593dd84d33b6861cffc5abcf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.40.3/direct-runner-3.40.3-linux-arm64.tar.gz"
      sha256 "bc16b609ed6eab278ff684d5f94c739a7899393e628f600d6d81e5fe5cc6d867"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.40.3/direct-runner-3.40.3-linux-x64.tar.gz"
      sha256 "0b831307da51879eeff532e53eb764aee8804b71b21e8016225054b36ec67cab"
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
