class JacksonJq < Formula
  desc "Jackson jq command line JSON processor"
  homepage "https://github.com/eiiches/jackson-jq"
  version "0.0.5"
  url "http://central.maven.org/maven2/net/thisptr/jackson-jq-cli/0.0.5/jackson-jq-cli-0.0.5.jar"
  sha256 "9594fd9c1abe116ecba8e083c10291a9921ff1d461723a0b1df27cf91b85b01c"

  bottle :unneeded

  def install
    libexec.install "jackson-jq-cli-#{version}.jar"
    bin.write_jar_script libexec/"jackson-jq-cli-#{version}.jar", "jackson-jq"
  end
end
