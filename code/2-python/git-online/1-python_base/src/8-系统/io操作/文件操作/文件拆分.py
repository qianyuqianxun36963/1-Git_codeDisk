# coding=utf-8

import re
import os


def deal(path):
    input_file = open(path, "r", encoding="utf-8")

    for line in input_file.readlines():
        if re.match("\*{10}[\w\W]*\*{10}", line):
            output_file_path = line.replace("*", "")
            output_file_path = output_file_path.replace("\n", "")
            print(output_file_path)
            parent_path = os.path.abspath(os.path.join(output_file_path, ".."))
            mk_dir(parent_path)
            f = open(output_file_path, "a", encoding="utf-8")
        else:
            f.write(line)
            print("write " + line + " to " + output_file_path)


def mk_dir(path):
    # 引入模块
    import os

    # 去除首位空格
    path = path.strip()
    # 去除尾部 \ 符号
    path = path.rstrip("\\")

    # 判断路径是否存在
    # 存在     True
    # 不存在   False
    isExists = os.path.exists(path)

    # 判断结果
    if not isExists:
        # 如果不存在则创建目录
        # 创建目录操作函数
        os.makedirs(path)

        print
        path + ' 创建成功'
        return True
    else:
        # 如果目录存在则不创建，并提示目录已存在
        print
        path + ' 目录已存在'
        return False


source_file = "C:\\Users\\wang\\pythonResult\\result.txt"
deal(source_file)

