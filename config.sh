#!/bin/sh
rm -rf config
lb clean
cp -rfv preconfdir config
lb config
lb config \
  --apt apt \
  --apt-indices true \
  --apt-options "--yes -oAcquire::Languages=none -oAcquire::PDiffs=false -oAPT::Install-Recommends=0 -oAPT::Install-Suggests=0 -oDpkg::Progress-Fancy=true" \
  --apt-recommends false \
  --apt-source-archives false \
  -a amd64 \
  -b iso-hybrid \
  --bootappend-live "boot=live components spectre_v2=on spec_store_bypass_disable=on l1tf=full,force mds=full,nosmt tsx=off tsx_async_abort=full,nosmt kvm.nx_huge_pages=force nosmt=force l1d_flush=on mmio_stale_data=full,nosmt random.trust_bootloader=off random.trust_cpu=off intel_iommu=on amd_iommu=on efi=disable_early_pci_dma iommu.passthrough=0 iommu.strict=1 slab_nomerge init_on_alloc=1 init_on_free=1 pti=on vsyscall=none page_alloc.shuffle=1 randomize_kstack_offset=on extra_latent_entropy loglevel=3" \
  --bootloader "grub" \
  -d bullseye \
  --iso-volume "bullseye" \
  --archive-areas "main contrib non-free non-free-firmware" \
  --linux-packages "linux-image linux-headers" \
  --firmware-binary true \
  --firmware-chroot true \
  --system live  \
  --debian-installer live \
  --parent-mirror-chroot "https://deb.debian.org/debian" \
  --parent-mirror-bootstrap "http://ftp.debian.org/debian" \
  --parent-mirror-binary "https://deb.debian.org/debian" \
  --parent-mirror-chroot-security "https://deb.debian.org/debian-security" \
  --parent-mirror-binary-security "https://deb.debian.org/debian-security" \
  --mode debian \
  --conffile "$(pwd)/preconfig.conf" \
  --parent-distribution bullseye \
  --mirror-bootstrap "https://deb.kicksecure.com/" \
  --mirror-chroot "https://deb.kicksecure.com/" \
  --mirror-binary "https://deb.kicksecure.com/" \
  --keyring-packages "debian-archive-keyring ca-certificates ca-certificates-java tor torsocks tor-geoipdb apt-transport-tor nyx vanguards"

#  --parent-mirror-bootstrap-security "http://security.debian.org/debian-security" \
