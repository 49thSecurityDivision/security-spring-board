packer {
  required_plugins {
    virtualbox = {
      version = "~> 1"
      source  = "github.com/hashicorp/virtualbox"
    }
  }
}

source "virtualbox-iso" "base" {
  guest_os_type = "debian_12.1.0"
  iso_url = "https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-12.1.0-amd64-netinst.iso"
  iso_checksum = "SHA256:9f181ae12b25840a508786b1756c6352a0e58484998669288c4eec2ab16b8559"
  ssh_username = "user"
  ssh_password = "labuser"
  shutdown_command = "echo 'packer' | sudo -S shutdown -P now"
}

build {
  sources = ["sources.virtualbox-iso.base"]
}
