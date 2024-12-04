# SFSafariViewControllerExampleApp

Bu proje, SwiftUI ile `SFSafariViewController` kullanarak harici bir web sayfasını görüntülemek için bir örnek uygulamadır. `SFSafariViewController`, bir uygulamadan çıkmadan yerleşik bir tarayıcı deneyimi sunar.

---

## Özellikler

- Harici web sayfalarını yerleşik tarayıcıda açma
- Kullanıcı dostu bir SwiftUI arayüzü
- Safari görünümü SwiftUI ile entegre

---

## Kullanım

### 1. **SFSafariViewController Kullanımı**

SwiftUI'de `SFSafariViewController` kullanmak için `UIViewControllerRepresentable` protokolünü uygulamanız gerekir. Aşağıda bir örnek kullanım verilmiştir:

```swift
import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    let url: URL

    func makeUIViewController(context: Context) -> SFSafariViewController {
        let safariVC = SFSafariViewController(url: url)
        safariVC.preferredControlTintColor = .systemBlue // Kontrol renklerini özelleştirme
        return safariVC
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
    }
}
