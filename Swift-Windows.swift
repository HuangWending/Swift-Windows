import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    var window: NSWindow!

    func applicationDidFinishLaunching(_ notification: Notification) {
        // 创建窗口的尺寸和位置
        let windowRect = NSRect(x: 0, y: 0, width: 400, height: 200)
        
        // 创建窗口实例
        window = NSWindow(contentRect: windowRect,
                          styleMask: [.titled, .closable, .miniaturizable],
                          backing: .buffered,
                          defer: false)
        
        // 设置窗口标题
        window.title = "黄文定的窗口"
        
        // 创建文本标签实例
        let label = NSTextField(labelWithString: "Hello, HuangWending")
        label.frame = CGRect(x: 0, y: 0, width: 400, height: 200)
        
        // 将文本标签添加到窗口的内容视图
        window.contentView?.addSubview(label)
        
        // 显示窗口
        window.makeKeyAndOrderFront(nil)
        
        // 将窗口设置为应用程序的主窗口
        NSApp.activate(ignoringOtherApps: true)
    }
}

// 创建应用程序实例
let app = NSApplication.shared

// 创建AppDelegate实例
let appDelegate = AppDelegate()

// 设置应用程序的委托
app.delegate = appDelegate

// 运行应用程序事件循环
app.run()
