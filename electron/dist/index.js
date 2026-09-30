import { BrowserWindow, Menu, app } from "electron";
function createWindow() {
    const win = new BrowserWindow({
        width: 960,
        height: 544
    });
    Menu.setApplicationMenu(null);
    win.loadFile("../webPageDist/index.html");
}
(async () => {
    await app.whenReady();
    createWindow();
})();
//# sourceMappingURL=index.js.map