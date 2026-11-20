class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.137.8"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.8/direct-runner-3.137.8-osx-arm64.tar.gz"
      sha256 "f517f7e18192c3e1a6cec3d0a490ca6fdc5cbba3fee9d16feaec0a62a3b8eb4c"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.8/direct-runner-3.137.8-osx-x64.tar.gz"
      sha256 "549e08ec44e0847fa1475df436cc97e94f2909f7d55a9b0262438753587163c4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.8/direct-runner-3.137.8-linux-arm64.tar.gz"
      sha256 "a36ce4621579cb3ebe86b83518ffcad8d26601c21da850b01a029dc4f8f6e605"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.8/direct-runner-3.137.8-linux-x64.tar.gz"
      sha256 "b6c69cf3accf02adb54f6f451b5356a92f74436b49eaedd924f8136b6c42a632"
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
