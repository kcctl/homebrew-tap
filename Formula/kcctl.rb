# Generated with JReleaser 1.10.0 at 2024-01-18T20:13:57.730556253Z

class Kcctl < Formula
  desc "kcctl -- A CLI for Apache Kafka Connect"
  homepage "https://github.com/kcctl/kcctl"
  version "1.0.0.CR2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kcctl/kcctl/releases/download/v1.0.0.CR2/kcctl-1.0.0.CR2-linux-x86_64.zip"
    sha256 "5faf56f765425f75e7382363900a38f0a08988f039b0c6f5b9e1f8cbf5c1f07f"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kcctl/kcctl/releases/download/v1.0.0.CR2/kcctl-1.0.0.CR2-osx-x86_64.zip"
    sha256 "71c6f54cd8665fd6f401e04e96933b4670129c03547e61ba3a2b5611e393a799"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kcctl/kcctl/releases/download/v1.0.0.CR2/kcctl-1.0.0.CR2-osx-x86_64.zip"
    sha256 "71c6f54cd8665fd6f401e04e96933b4670129c03547e61ba3a2b5611e393a799"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kcctl" => "kcctl"
  end

  test do
    output = shell_output("#{bin}/kcctl --version")
    assert_match "1.0.0.CR2", output
  end
end
