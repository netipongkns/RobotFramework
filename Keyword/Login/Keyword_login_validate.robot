*** Settings ***
Library        SeleniumLibrary
Resource        ../../Valiable/Login_validate_var/Var_Login.robot


*** Keywords ***
Insert Uusername
    [Arguments]    ${USername}
    Click Element    //*[@id="username"]
    Input Text    //*[@id="username"]    ${USername}

Insert Password
    [Arguments]    ${Password}
    Click Element    //*[@id="password"]
    Input Text    //*[@id="password"]    ${Password}

Submit Button
    Click Button    //*[@id="submit"]

validate Username
    ${username}    Get Value    //*[@id="username"]

format Username
    ${valueUSername}    Get Value    //*[@id="username"]
    Should Match Regexp    ${valueUSername}      ^[a-zA-Z]    msg=username pattern ไม่ถูกต้อง  
    #(\\w+)@(gmail\\.(com|co\\.th)) Check mail 
    #\\w+ จะจับอักขระที่เป็นตัวอักษร ตัวเลข หรือขีดล่าง ตั้งแต่หนึ่งตัวขึ้นไป
    #[\\w.]+ เป็น Character Class ที่ยอมรับตัวอักษร ตัวเลข ขีดล่าง และจุดเท่านั้น และต้องมีอย่างน้อย 1 ตัวขึ้นไป
    #การใช้ ^[a-zA-Z]+ จะทำให้สามารถระบุได้ว่า จะต้องเป็นตัวอักษรเท่านั้น ไม่สามารถมีตัวเลข อักขระพิเศษ หรือขีดล่างได้ 
    #การใช้ [a-zA-Z0-9]+ จะทำให้สามารถระบุได้ว่า จะต้องเป็นตัวอักษรหรือตัวเลขเท่านั้น ไม่สามารถมีอักขระพิเศษหรือขีดล่างได้ ซึ่งเป็นไปตามข้อกำหนดที่ต้องการ