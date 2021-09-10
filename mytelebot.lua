--MyTeleBot v. == 1.0
--[[  Ѕиблиотека создана дл€ улучшеного управлени€ ботами телеграма и телеграм апи
      ќфф. страница BH- »«ћ≈Ќ»“№
      ќфф. группа - vk.com/b_votson_team

--]]

--Ѕиблиотеки :3
local ffi = require 'ffi'
    ffi.cdef [[
        void* __stdcall ShellExecuteA(void* hwnd, const char* op, const char* file, const char* params, const char* dir, int show_cmd);
        uint32_t __stdcall CoInitializeEx(void*, uint32_t);
    ]]
local shell32 = ffi.load 'Shell32'



function SendMessage(token, chatid, text)
    shell32.ShellExecuteA(nil, 'open', 'https://api.telegram.org/bot' token,  '/sendMessage?chat_id=', chatid, '&text=', text nil, nil, 1))
end
--shell32.ShellExecuteA(nil, 'open', 'https://api.telegram.org/bot' token,  '/sendMessage?chat_id=', chatid, '&text=', text nil, nil, 1))
function SendPhoto(token, chatid, file_id)
    shell32.ShellExecuteA(nil, 'open', 'https://api.telegram.org/bot' token,  '/sendPhoto?=', chatid, '&photo=', file_id, nil, nil, 1))
end
function SendAudio(token, chatid, file_id)
    shell32.ShellExecuteA(nil, 'open', 'https://api.telegram.org/bot' token,  '/sendAudio?chat_id=', chatid, '&audio=', file_id, nil, nil, 1))
end
function SendDocument(token, chatid, file_id)
    shell32.ShellExecuteA(nil, 'open', 'https://api.telegram.org/bot' token,  '/sendDocument?chat_id=', chatid, '&document=', file_id, nil, nil, 1))
end
function SendVideo(token, chatid, file_id)
    shell32.ShellExecuteA(nil, 'open', 'https://api.telegram.org/bot' token,  '/sendVideo?chat_id=', chatid, '&video=', file_id, nil, nil, 1))
end
function SendContact(token, chatid, number, first_name)
    shell32.ShellExecuteA(nil, 'open', 'https://api.telegram.org/bot' token,  '/sendDocument?chat_id=', chatid, '&phone_number=', number, '&first_name=', first_name nil, nil, 1))
end

