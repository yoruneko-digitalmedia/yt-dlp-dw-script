





1. 點擊 [下載.bat] 會跳出視窗，照提示依序輸入網址、格式ID代碼。
注意:部分的格式代碼為Audio only或Video only
請注意VCODEC 及ACODEC 這兩行，有部分ID代碼是audio only 或video only
![image](https://github.com/yoruneko-digitalmedia/yt-dlp-dw-script/assets/131511538/73c7373d-43ce-4363-8c3d-ce6451a21769)

如果只想下載音檔，可以只選audio only 的ID代碼
如果想下載高畫質影片+高音質，可以輸入ID代碼 140+137 或是 251+248 等影片加音檔組合，yt-dlp會分別下載後自行合併檔案 
如果合併報錯、失敗或是合併後的檔案毀損，請重新下載或下載ID代碼22這類不須合併的格式
下載完成請至[downloads/]資料夾查看結果。

2. 如有轉檔需求，請把檔案放在[轉檔工具/輸入/]資料夾中，如下所示:

-YT-DLP/
 |-轉檔工具/
 | |-輸入/
 | | |-要轉檔的檔案
 | |-輸出/
 | |-轉成mp3.bat
 | |-轉成mp4.bat

點擊需要的格式轉換檔案，會出現視窗開始轉檔。
注意:資料夾內的所有檔案都會被轉檔
請等待至最底下輸出完成的提示(依據硬體效能決定轉檔時間)。
最後請至[輸出/]資料夾查看檔案。
