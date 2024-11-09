# Generated with JReleaser 1.15.0 at 2024-11-09T22:34:40.080801817Z

class Kcctl < Formula
  desc "kcctl -- A CLI for Apache Kafka Connect"
  homepage "https://github.com/kcctl/kcctl"
  version "1.0.0.CR4"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kcctl/kcctl/releases/download/v1.0.0.CR4/kcctl-1.0.0.CR4-linux-x86_64.zip"
    sha256 "b8bafd81774a9e54a55fa5c3ed9ad4e8512a31838ae12b6d83664d503c1f11cd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kcctl/kcctl/releases/download/v1.0.0.CR4/kcctl-1.0.0.CR4-osx-aarch_64.zip"
    sha256 "9105344c2527bb754d5f01de4f5643a7f12d883267dba001f21cc94f25542a82"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kcctl/kcctl/releases/download/v1.0.0.CR4/kcctl-1.0.0.CR4-osx-x86_64.zip"
    sha256 "a4c3edef0e9e33a189e795e9b3a7e469e51d0d1bf110999a76b54d92db35122a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kcctl" => "kcctl"
  end

  test do
    output = shell_output("#{bin}/kcctl --version")
    assert_match "1.0.0.CR4", output
  end
end
