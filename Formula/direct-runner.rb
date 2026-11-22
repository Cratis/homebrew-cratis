class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.141.3"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.141.3/direct-runner-3.141.3-osx-arm64.tar.gz"
      sha256 "9009a9c4abf6ea51b239a3f12d948a9e31414963d51e8588186827077abaaf18"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.141.3/direct-runner-3.141.3-osx-x64.tar.gz"
      sha256 "b62f894637cf5c0a9451bcb33fd79fdd169915b142107838c87eabdd574ec1af"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.141.3/direct-runner-3.141.3-linux-arm64.tar.gz"
      sha256 "39aa54a9fbba2c3702f31d3ac5f4f66a789209c2e2776fc76739beff3e012bd2"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.141.3/direct-runner-3.141.3-linux-x64.tar.gz"
      sha256 "90c1b2d9a4782d59fe02cd34d62d90346e68c0dbc8ff10083cd2e99ee7045397"
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
