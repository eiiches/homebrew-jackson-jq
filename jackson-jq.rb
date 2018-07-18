class JacksonJq < Formula
  desc "Jackson jq command line JSON processor"
  homepage "https://github.com/eiiches/jackson-jq"
  version "0.0.9"
  url "http://central.maven.org/maven2/net/thisptr/jackson-jq-cli/0.0.9/jackson-jq-cli-0.0.9.jar"
  sha256 "ef6106de52b73fc5e79201a116930f271902615a2bd160978b9f828fdd2ed961"

  bottle :unneeded

  def install
    libexec.install "jackson-jq-cli-#{version}.jar"
    bin.write_jar_script libexec/"jackson-jq-cli-#{version}.jar", "jackson-jq"
  end
end
