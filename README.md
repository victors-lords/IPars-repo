# 🦁 AyLinux Resmi APT Paket Deposu

AyLinux ekosistemi ve Termux/Linux ortamları için geliştirilmiş resmi APT deposu.

---

## ⚡ Hızlı Kurulum

Depoyu Termux sisteminize tek komutla ekleyin:

```bash
echo "deb [trusted=yes] https://victors-lords.github.io/aylinux-repo/ ./" > $PREFIX/etc/apt/sources.list.d/aylinux.list
apt update
```

---

## 📦 Mevcut Paketler

### 1. `aytop` 📊
Canlı, interaktif ve fütüristik sistem monitörü (`htop` alternatifi).
- CPU barları, RAM kullanımı, Uptime ve aktif süreçleri canlı görselleştirir.
```bash
apt install aytop
aytop
```

### 2. `aylinux-banner` 🦁
AyLinux resmi fütüristik karşılama ekranı ve Pars ASCII sanatı.
```bash
apt install aylinux-banner
aylinux-banner
```

---

## 🛠️ Bilgiler
- **Geliştirici:** Aybars (`victors-lords`)
- **Yapay Zeka Mimarisi:** J.A.R.V.I.S.
- **Web Sitesi:** [victors-lords.github.io/aylinux-repo](https://victors-lords.github.io/aylinux-repo/)
