class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.124.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.124.1/direct-runner-3.124.1-osx-arm64.tar.gz"
      sha256 "069cf8cd2465044e1487dca5d6fb4cb2667fa63a69464600454e96bfccdf6962"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.124.1/direct-runner-3.124.1-osx-x64.tar.gz"
      sha256 "52239a1101ec3692be27f00b94a08b08a2b8b12f672a21cf352b1b161acefcde"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.124.1/direct-runner-3.124.1-linux-arm64.tar.gz"
      sha256 "5b6d3c30a361f3fa601fd655368a9ca6a966e21cc63fbda762f538ceb9a77059"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.124.1/direct-runner-3.124.1-linux-x64.tar.gz"
      sha256 "6e4ee934291a470d48f567ab959bb549f97fdda6d273f35c7ec83c3292eae02e"
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
