class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.129.5"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.129.5/direct-runner-3.129.5-osx-arm64.tar.gz"
      sha256 "7358f0504a37a961370063ca2fee392b1b34f72532cd56851f4284f691639faa"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.129.5/direct-runner-3.129.5-osx-x64.tar.gz"
      sha256 "9ce6ce701f7c79bc99e83208af7308a2d3d68dea00c261782454df9c0cd57867"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.129.5/direct-runner-3.129.5-linux-arm64.tar.gz"
      sha256 "d85ddd48619132bdcb608383770973dd943888ff4d483a4231d7e90155827a46"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.129.5/direct-runner-3.129.5-linux-x64.tar.gz"
      sha256 "3d879d9c55e4f87e2ea69365d36fd250a161a3dce143ce84ac0eb3531451f2ad"
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
