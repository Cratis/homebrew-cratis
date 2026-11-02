class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.119.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.119.0/cratis-3.119.0-osx-arm64.tar.gz"
      sha256 "b1634a252df3afe0f540335b69afb4a2d222c099679c4c7cb67e2e8f66ca1c85"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.119.0/cratis-3.119.0-osx-x64.tar.gz"
      sha256 "2029e58ae4a4fc3258166fb663c6a26432daf48e902ba0db7b90646dd9b7509a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.119.0/cratis-3.119.0-linux-arm64.tar.gz"
      sha256 "8f8405ab2ef5ea056de4bce8719c45d86b42deb50962232a23b1a26440011b4a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.119.0/cratis-3.119.0-linux-x64.tar.gz"
      sha256 "1d5dc479e969fa16a98f5082ee071509ee42e9f8f716c4ac6b8374dd655388aa"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
