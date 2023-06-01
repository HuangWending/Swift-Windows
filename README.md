# Swift-Windows
Swift创建窗口
导入Cocoa框架：

import Cocoa

定义AppDelegate类，继承自NSObject并遵循NSApplicationDelegate协议：

class AppDelegate: NSObject, NSApplicationDelegate {
    var window: NSWindow!

在AppDelegate类中，声明一个NSWindow实例变量window。

    func applicationDidFinishLaunching(_ notification: Notification) {

在AppDelegate类中，实现了NSApplicationDelegate协议中的`applicationDidFinishLaunching`方法，该方法在应用程序完成启动后被调用。

        let windowRect = NSRect(x: 0, y: 0, width: 400, height: 200)

定义一个NSRect结构体变量windowRect，指定窗口的位置和尺寸。

        window = NSWindow(contentRect: windowRect, styleMask: [.titled, .closable, .miniaturizable], backing: .buffered, defer: false)

创建一个NSWindow实例window，使用指定的内容矩形、窗口样式和缓冲类型。

        window.title = "黄文定的窗口"

设置窗口的标题为"黄文定的窗口"。

        let label = NSTextField(labelWithString: "Hello, HuangWending")
        label.frame = CGRect(x: 0, y: 0, width: 400, height: 200)

创建一个NSTextField实例label，使用指定的字符串创建一个标签，并设置其位置和尺寸。

        window.contentView?.addSubview(label)

将文本标签label添加到窗口的内容视图中。

        window.makeKeyAndOrderFront(nil)

使窗口成为键盘的主窗口，并将其显示在屏幕上。

        NSApp.activate(ignoringOtherApps: true)
        
激活应用程序，使其成为前台应用程序，并忽略其他应用程序。

let app = NSApplication.shared

创建一个NSApplication实例app，用于管理应用程序的运行循环。

let appDelegate = AppDelegate()

创建一个AppDelegate实例appDelegate，用于处理应用程序的委托方法。

app.delegate = appDelegate

将应用程序的委托设置为appDelegate。

app.run()

运行应用程序的事件循环，开始接收和处理用户事件，保持应用程序处于运行状态。
