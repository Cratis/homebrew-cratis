class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.142.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.142.1/direct-runner-3.142.1-osx-arm64.tar.gz"
      sha256 "412af050ba9fc5fed03735ea9f922c25b593778dbf4512ab4803133e6fedeb25"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.142.1/direct-runner-3.142.1-osx-x64.tar.gz"
      sha256 "34cf886b716d2776db5995608aa88b2f499692724644a00b8b7da19bb2922e9e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.142.1/direct-runner-3.142.1-linux-arm64.tar.gz"
      sha256 "7c7851285d61872f05116489edb69b0f6f9746cfabf8bfd47ffb21f61bcf1a9c"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.142.1/direct-runner-3.142.1-linux-x64.tar.gz"
      sha256 "5047f7ea54b1d5811b795a5e7db291205486cb718e7a5a23777a4eedb8ba26d6"
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
