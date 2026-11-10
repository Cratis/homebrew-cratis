class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.60.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.60.0/direct-runner-3.60.0-osx-arm64.tar.gz"
      sha256 "505084c854f1ab6b9bf878cbd4dd0123995a8685576ee4f34c8a09fa137a5973"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.60.0/direct-runner-3.60.0-osx-x64.tar.gz"
      sha256 "b138f979382678b0ac79318a2e2cc8b67a7b4a9a3a30eb285575fdecfb9bac75"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.60.0/direct-runner-3.60.0-linux-arm64.tar.gz"
      sha256 "7387e72b1d3c1a4f73687fb6e7ca45bab6202849eae687a5e675261751b7f995"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.60.0/direct-runner-3.60.0-linux-x64.tar.gz"
      sha256 "ed22226c34492a417166a7fb119b089f2f77587bc24c38340acabe3a18743414"
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
