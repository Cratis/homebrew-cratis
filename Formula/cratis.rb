class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.40.4"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.40.4/cratis-3.40.4-osx-arm64.tar.gz"
      sha256 "5f317fe232eedb44b8164d576b23196a826278b4aadda6a22d8aeb3659948713"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.40.4/cratis-3.40.4-osx-x64.tar.gz"
      sha256 "4f5242730bc31a1576909b0bed609ab5db6b5679d321a5501e5df2dc902b3fbd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.40.4/cratis-3.40.4-linux-arm64.tar.gz"
      sha256 "56f1ad785109a6bda2eac96dd70cc7f47951ae034dfc5bf714b81921ba90c245"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.40.4/cratis-3.40.4-linux-x64.tar.gz"
      sha256 "fb3108828495d55d852c276933f09ae66475561c4901b50ddb4524ff0af81632"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
