;Este script fue escrito por https://github.com/ClioElauren para

#SingleInstance Force
#UseHook

+VK32::SendInput "@"
+VK36::Sendtext "^"
+VK37::SendInput "&"
+VK38::SendInput "*"
+VK39::SendInput "("
+VK30::SendInput ")"

VKDB::SendInput "-"
+VKDB::SendInput "_"
VKDD::SendInput "="
+VKDD::Sendtext "+"

+VKBA::Sendtext "{"
+VKBB::Sendtext "}"
^VKBA::SendInput "["
^VKBB::SendInput "]"

VKBF::SendInput "\"
+VKBF::SendInput "|"

<!>ñ::SendInput ":"
^<!ñ::SendInput ";"
+VKDE::SendInput "'"
VKDE::SendInput '"'

+VKBC::SendInput "<"
+VKBE::SendInput ">"
+VKBD::SendInput "?"
VKBD::SendInput "/"

+TAB::SendInput "~"

PgUp::Send "{Home}"
PgDn::Send "{End}"

<^>!1::Send "{Numpad1}"
<^>!2::Send "{Numpad2}"
<^>!3::Send "{Numpad3}"
<^>!4::Send "{Numpad4}"
<^>!5::Send "{Numpad5}"
<^>!6::Send "{Numpad6}"
<^>!7::Send "{Numpad7}"
<^>!8::Send "{Numpad8}"
<^>!9::Send "{Numpad9}"
<^>!0::Send "{Numpad0}"

VKDC::
    {
        if (A_PriorHotKey = "VKDC" and A_TimeSincePriorHotkey < 500) ; Si la tecla anterior fue también "a" y el tiempo transcurrido es menor a 500ms
        {
            Run "code"
        }
    }
