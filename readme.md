# FE8U cn Font Installer
---

一个基于[Inserting Everything Through EA](https://feuniverse.us/t/ea-wip-a-guide-to-inserting-everything-through-ea/1627) 的思想构建的，可直接使用Event Assembler对美版圣魔之光石导入汉化字库的EA补丁。

## 如何使用
烧录该补丁的方法非常简单，只需使用[Event Assembler](https://feuniverse.us/t/event-assembler/1749)， 将文件夹中的 `EAcnFontInstaller.event` 烧录进rom中即可。
烧录完成后可以采用FEBuilderGBA自行书写中文文本，也可使用[Text-Process-cn](https://github.com/MokhaLeee/text-process-cn.git)生成EA格式的文本。

## 优势(相较FEBuilder)
- 文本化导入，可直接通过Buildfile进行烧录，从而可以直接在EA端与SkillSys Buildfile兼容；
- 直接占用ROM内部的空余空间，而不进行内存扩展。有效节省rom空间。

## 注意
- **空间占用问题**：字库占用FE8U中 `0xEFB2E0 ~ 0xFE0000` 的空间，通常不会与他人改版相冲突，但是建议在烧录之前先行排查待烧录rom的这块区域是否被占用。如果已被占用，则需修改`EAcnFontInstaller.event`中`FreeSpaceFont`的数值，使之指向一块未被占用的空间。

- **已有补丁**：当前补丁已内嵌`Draw-UTF8`与`Anti-Huffman`补丁，但即使待烧录rom中已有上述补丁也不会造成冲突，因而通常不必担心补丁冲突的问题；

- **若发现字库中部分字体未识别**：通常这是由于改版作品自行烧录字库导致字库寻址错误导致。请将文件`cnFonts/FontTableDef.event`删除，随后将待烧录rom拖入软件`cnFonts/_MakeTableDef.exe`即可重新生成字库地址。

- 如有其他bug请联系[MokhaLeee@GitHub](https://github.com/MokhaLeee)或[悠木晓缺@bilibili]( https://b23.tv/LErIiVp)

## 致谢
- 感谢火花汉化组提供的基础字库数据
- 感谢冬瓜、冈萨雷斯等朋友为GBAFE汉化事业做出的贡献
- Thanks for all FEU friends and 7743 for their contrbution on GBAFE Hack, cool guys.