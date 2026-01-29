cask "dimescheduler-setup" do
  version "0.10.8"
  sha256 "4408d73a57d097e0a46480ba041e779519a4243dbb5f6dadf33a9dc10cc993ce"

  url "https://stdimescheduler.blob.core.windows.net/setup/v#{version}/dimescheduler-setuppackagebuilder_0.1.0_universal.dmg"
  name "Dime.Scheduler Setup Package Builder"
  desc "DSL configuration tool for Dime.Scheduler"
  homepage "https://www.dimescheduler.com"

  livecheck do
    url "https://github.com/dime-scheduler/dsl/releases/latest"
    strategy :github_latest
  end

  app "dimescheduler-setuppackagebuilder.app"

  zap trash: [
    "~/Library/Application Support/com.dimesoftware.dimescheduler.setup-package-builder",
    "~/Library/Caches/com.dimesoftware.dimescheduler.setup-package-builder",
    "~/Library/Preferences/com.dimesoftware.dimescheduler.setup-package-builder.plist",
    "~/Library/Saved Application State/com.dimesoftware.dimescheduler.setup-package-builder.savedState",
  ]
end
