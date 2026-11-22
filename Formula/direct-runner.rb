class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.142.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.142.2/direct-runner-3.142.2-osx-arm64.tar.gz"
      sha256 "457d87b91260892ae3999402a9dd090a5f29bb8d7263483c0353556f0c5b31ce"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.142.2/direct-runner-3.142.2-osx-x64.tar.gz"
      sha256 "d647e26fa46d5d83bae0d5fe6d1a527f9b3269e5368eeb32fcd022bb77e2a913"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.142.2/direct-runner-3.142.2-linux-arm64.tar.gz"
      sha256 "3452f4e1adde1a432373404ba612dcf71cd4ee78ee47d589fb604ccc01a12551"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.142.2/direct-runner-3.142.2-linux-x64.tar.gz"
      sha256 "b361bd9dbff62cf800a965717105c320f9b3b4161e1df4ab96559d263f7102ae"
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
