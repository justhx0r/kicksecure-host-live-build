# Kicksecure Host - Now self implemented.
We live in times where privacy and security are not only important in the first world,
where where politicians and society more and more demand that crime should not be `SOLVED`, but prevented(which is either ridiculous, if you consider yourself "normal" or horrifying, should you be in any way an outliar on some bell curve) ..
Rather the opposite. We see an increasing trend towards digital authoritarianism, maybe even neo totalitarianism, whereby I mean that just like in the 1930.
Whilst there ARE solutions out there that can protect your privacy and security, like Tails OS, Whonix and QubesOS for PC and GrapheneOS on Google Pixel, they are often not useful for those who really need them, since journalists should not have to solely rely on an anonymous phone, which furthermore is also subject to timing attacks by their own governemts, i.e. they just match when the device send packets through wifi. 
Tails OS and Whonix on the other hand are useful tools for those targetet individuals, but `Tails` only really works on USB drives and there HAVE been successful governemnt attacks on it, specifically in regions where updating it to prevent vulnerabilities might not be thesible. It must also be updated by re flashing the USB drive, which might be a barrier for some people to actually perform the update.

I know that the `best` OS for anonymity and security is QubesOS for a reson, since it is based upon the `XEN hypervisor`, which is itself based upon `firecracker` MicroVMs, making it both blazing fast(for an Operating System based entirely upon virtualization, anyway) as well as ultra secure, since those micro vms have a significantly lower attack surface.
But reality is, especially in regions where a solution like this would be needed most, fact of the matter is, most people there, whilst their systems might support AMD-V v VMX technologies, firecracker rely on a bunch of other CPU features, and thus, people on lower end devices from this year might be able to use `Qubes`, but almost nobody else can.
Thus, this is simply my own shot at realizing the long promised but almost forgotten about "Kicksecure Host".
The goal is to be able to release both KVM and VirtualBox versions of "Kicksecure Host" within the next two months, so that those who most need protection might be protected.
Feel free to contribute.
