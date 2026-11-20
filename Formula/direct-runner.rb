class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.138.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.138.2/direct-runner-3.138.2-osx-arm64.tar.gz"
      sha256 "8d74c13bd4fc9dad7e330511e7cae0a748dcb5d3ef243be1e04425c4d44f43ff"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.138.2/direct-runner-3.138.2-osx-x64.tar.gz"
      sha256 "795216c7021529182a5e8094826e88122513cce38362aca85d3b3a1510fa5129"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.138.2/direct-runner-3.138.2-linux-arm64.tar.gz"
      sha256 "a283461e630b4a611e054a30ed4c18e0288b9daac3601382fe19c181dd343251"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.138.2/direct-runner-3.138.2-linux-x64.tar.gz"
      sha256 "3e5a6f274daee755d54b4f7215d8654dec25a70799eef0507f408f5f2f61434c"
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
