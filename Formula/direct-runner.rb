class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.137.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.0/direct-runner-3.137.0-osx-arm64.tar.gz"
      sha256 "25a928d20f7385b9e3dfee64014cad6007fa7c3823e84d65a8f41e9d254a5dae"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.0/direct-runner-3.137.0-osx-x64.tar.gz"
      sha256 "8b366e3c7affb0a0b3d5a075657037bfcf76cd1d1347656fbfed76cdda9081b9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.0/direct-runner-3.137.0-linux-arm64.tar.gz"
      sha256 "661d35d9ce7c988c75b98ce44b1f8c495c255d4bdcb5693dbbfafdbbb8f684ec"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.0/direct-runner-3.137.0-linux-x64.tar.gz"
      sha256 "fb7c6ce69dbc76c307a07c6362fe73fa950f31a46f267977b194dbc27575f569"
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
