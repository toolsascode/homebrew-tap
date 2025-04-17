# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gomodeler < Formula
  desc "Go Modeler is a small CLI and Library that brings the powerful features of the golang template into a simplified form."
  homepage "https://github.com/toolsascode/gomodeler"
  version "0.1.4"
  license "MIT"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/toolsascode/gomodeler/releases/download/v0.1.4/gomodeler_Darwin_x86_64.tar.gz"
      sha256 "4fba918139cca768f128cb4899ededbafc2a990692257f09c0f959217538574a"

      def install
        bin.install "gomodeler"
        bash_completion.install "completions/gomodeler.bash" => "gomodeler"
        zsh_completion.install "completions/gomodeler.zsh" => "_gomodeler"
        fish_completion.install "completions/gomodeler.fish"
        man1.install "manpages/gomodeler.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/toolsascode/gomodeler/releases/download/v0.1.4/gomodeler_Darwin_arm64.tar.gz"
      sha256 "ec22c73d14238df0b1d780a51f56de911eadae60f7b84a9a6f3b3876212099bd"

      def install
        bin.install "gomodeler"
        bash_completion.install "completions/gomodeler.bash" => "gomodeler"
        zsh_completion.install "completions/gomodeler.zsh" => "_gomodeler"
        fish_completion.install "completions/gomodeler.fish"
        man1.install "manpages/gomodeler.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/toolsascode/gomodeler/releases/download/v0.1.4/gomodeler_Linux_x86_64.tar.gz"
        sha256 "210826b24d3aaae7d4b1f6ab5197c2c75f623c8ca96cfdb6411a8028331c5dd6"

        def install
          bin.install "gomodeler"
          bash_completion.install "completions/gomodeler.bash" => "gomodeler"
          zsh_completion.install "completions/gomodeler.zsh" => "_gomodeler"
          fish_completion.install "completions/gomodeler.fish"
          man1.install "manpages/gomodeler.1.gz"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/toolsascode/gomodeler/releases/download/v0.1.4/gomodeler_Linux_arm64.tar.gz"
        sha256 "5799fd83ba2d1ac6750e6afa8b3dce848c4df446fea36cfec7011fd8043127e9"

        def install
          bin.install "gomodeler"
          bash_completion.install "completions/gomodeler.bash" => "gomodeler"
          zsh_completion.install "completions/gomodeler.zsh" => "_gomodeler"
          fish_completion.install "completions/gomodeler.fish"
          man1.install "manpages/gomodeler.1.gz"
        end
      end
    end
  end

  test do
    system "#{bin}/gomodeler version"
  end
end
