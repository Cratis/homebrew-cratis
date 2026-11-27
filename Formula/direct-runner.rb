class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.148.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.148.2/direct-runner-3.148.2-osx-arm64.tar.gz"
      sha256 "7faa85212c09d1e10281b7379df71a14efc45c23d43ed5e3053fb751c6db108e"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.148.2/direct-runner-3.148.2-osx-x64.tar.gz"
      sha256 "33d37cbfcdfcf23aa775f084571709a9fb698922b7d0cd2ab715d0123e5caac3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.148.2/direct-runner-3.148.2-linux-arm64.tar.gz"
      sha256 "106508e415dcbc7977d2effe769d47eaa105cc930131c4c8bd716540da9c0403"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.148.2/direct-runner-3.148.2-linux-x64.tar.gz"
      sha256 "d1961e94e48e0c655ac2fe6b38f284e3e745dada494801cf3db70357ba79de2b"
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
