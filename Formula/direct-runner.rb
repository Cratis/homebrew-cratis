class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.67.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.67.0/direct-runner-3.67.0-osx-arm64.tar.gz"
      sha256 "bd222579bf3667d60f924fb053dbecba76938dd9d8e08c5ee9d3f42547e77bbd"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.67.0/direct-runner-3.67.0-osx-x64.tar.gz"
      sha256 "d04e91955a80d2ef001a2f685d7da8d9c6674b5246afed7f885d95898d68601d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.67.0/direct-runner-3.67.0-linux-arm64.tar.gz"
      sha256 "1322041ba4ce22205b45b849f480c37331b7f98e17bc2f916fd2c8f048d3562e"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.67.0/direct-runner-3.67.0-linux-x64.tar.gz"
      sha256 "4a9af39a14448e4f74171d6e3d85a7110687a57d706e8180ca052f35ff176001"
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
