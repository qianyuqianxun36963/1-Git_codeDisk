# coding=utf-8

import os


def deal(path):
    its = os.listdir(path)
    for it in its:
        if it[-2:] == 'py':
            continue
        child = os.path.join(path, it)
        if os.path.isdir(child):
            deal(child)
        else:
            input_file = open(path+"\\"+it, "r", encoding="utf-8")
            print(it)
            output_file.write('\n' + "**********" + path+"\\"+it + "**********" + '\n\n')
            for line in input_file.readlines():
                print(line)
                output_file.write(line)


DIR = "C:\\Users\\wang\\Desktop\\hexo"
output_file = open("C:\\Users\\wang\\pythonResult\\result.txt", "w", encoding="utf-8")
deal(DIR)

