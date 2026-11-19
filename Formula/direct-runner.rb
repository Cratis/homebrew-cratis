class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.135.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.135.1/direct-runner-3.135.1-osx-arm64.tar.gz"
      sha256 "630dbdf1eb58d56b864390418ad982248f1f2ba71f3a0d3a92c2ee1802451165"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.135.1/direct-runner-3.135.1-osx-x64.tar.gz"
      sha256 "363a587b5b94899f358697d5481c53f4ee0c8b78ddf04fb1299721749e24dd50"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.135.1/direct-runner-3.135.1-linux-arm64.tar.gz"
      sha256 "1981b7da4f36ceffd3a8e8941a3658de22d7fb11374884e75645d701b92bf8fc"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.135.1/direct-runner-3.135.1-linux-x64.tar.gz"
      sha256 "0eb3b9d0e99f4a76d3d1bd9a6b8fd871b1bd20064181a90b742359937b370a0e"
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
