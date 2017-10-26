#coding=gbk

# gui 窗口

import win32gui
from win32con import *

def WndProc(hwnd,msg,wParam,lParam):
    if msg == WM_PAINT:
       hdc,ps = win32gui.BeginPaint(hwnd)
       rect = win32gui.GetClientRect(hwnd)
       win32gui.DrawText(hdc,'GUI Python',len('Gui Python'),rect,DT_SINGLELINE|DT_CENTER|DT_VCENTER)
       win32gui.EndPaint(hwnd,ps)
    if msg == WM_DESTROY:
       win32gui.PostQuitMessage(0)
    return win32gui.DefWindowProc(hwnd,msg,wParam,lParam)

#生成窗口类，并给其他项赋值
wc = win32gui.WNDCLASS()
wc.hbrBackground = COLOR_BTNFACE + 1
wc.hCursor = win32gui.LoadCursor(0,IDC_ARROW)
wc.hIcon = win32gui.LoadIcon(0,IDI_APPLICATION)
wc.lpszClassName = "Python on Windows"
wc.lpfnWndProc = WndProc

#注册窗口
reg = win32gui.RegisterClass(wc)

#创建窗口
hwnd = win32gui.CreateWindow(reg,"python",WS_OVERLAPPEDWINDOW,CW_USEDEFAULT,CW_USEDEFAULT,CW_USEDEFAULT,CW_USEDEFAULT,0,0,0,None)

#显示窗口
win32gui.ShowWindow(hwnd,SW_SHOWNORMAL)
win32gui.UpdateWindow(hwnd)

#进入消息循环，直到窗口结束
win32gui.PumpMessages()