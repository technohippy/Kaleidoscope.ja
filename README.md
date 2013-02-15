# 日本語プログラミング言語「カレイドスコープ」

## 概要

LLVMで日本語プログラミング言語作れるのかなと思って試しに[Kaleidoscope][http://llvm.org/docs/tutorial/]の予約語や識別子を日本語にしてみました。

## 使い方

### 組み込み関数の準備

    $ clang++ -emit-llvm -S print.cpp -o print.ll
    $ llvm-as print.ll

### 開始

    $ ruby kaleidoscope_ja.rb

### サンプルの実行

    $ ruby kaleidoscope_ja.rb mandel.ksj

## 参考

 * http://llvm.org/docs/tutorial/
 * https://github.com/technohippy/Kaleidoscope.rb
