#include "stdafx.h"
#include "ds.h"

BOOL CDajSlowo::DajSlowo(CString &Str)
{
	char c;

	if(!str1.IsEmpty())
	{
		Str = str1;
		str1 = "";
		return TRUE;
	}
	if(!str2.IsEmpty())
	{
		Str = str2;
		str2 = "";
		return TRUE;
	}
	Str = "";

	while(m_n)
	{
		while(m_n && (isalpha(c = m_pStr->GetAt(m_i)) || jestpolski(c)))
		{
			if(c == 'x')
			{
				Str += "ks";
			} else if(c == 'q')
			{
				Str += "ku";
			} else {
				Str += c;
			}
			++m_i;
			--m_n;
		}

		if(!Str.IsEmpty())
		{
			return TRUE;
		}

		switch(c)
		{
		case '!':
			Str = "wykrzyknik";
			break;
		case '"':
			Str = "cudzys��w";
			break;
		case '#':
			Str = "krzy�yk";
			break;
		case '$':
			Str = "dolar";
			break;
		case '%':
			Str = "procent";
			break;
		case '&':
			Str = "ampersand";
			break;
		case '\'':
			Str = "apostrof";
			break;
		case '(':
			Str = "nawias";
			str1 = "lewy";
			break;
		case ')':
			Str = "nawias";
			str1 = "prawy";
			break;
		case '*':
			Str = "gwiazdka";
			break;
		case '+':
			Str = "plus";
			break;
		case ',':
			Str = "przecinek";
			break;
		case '-':
			Str = "my�lnik";
			break;
		case '.':
			Str = "kropka";
			break;
		case '/':
			Str = "�amane";
			break;
		case '0':
			Str = "zero";
			break;
		case '1':
			Str = "jeden";
			break;
		case '2':
			Str = "dwa";
			break;
		case '3':
			Str = "trzy";
			break;
		case '4':
			Str = "cztery";
			break;
		case '5':
			Str = "pi��";
			break;
		case '6':
			Str = "sze��";
			break;
		case '7':
			Str = "siedem";
			break;
		case '8':
			Str = "osiem";
			break;
		case '9':
			Str = "dziewi��";
			break;
		case ':':
			Str = "dwukropek";
			break;
		case ';':
			Str = "�rednik";
			break;
		case '<':
			Str = "mniejsze";
			break;
		case '=':
			Str = "r�wne";
			break;
		case '>':
			Str = "wi�ksze";
			break;
		case '?':
			Str = "znak";
			str1 = "zapytania";
			break;
		case '@':
			Str = "ma�pa";
			break;
		case '[':
			Str = "nawias";
			str1 = "lewy";
			str2 = "kwadratowy";
			break;
		case '\\':
			Str = "uko�nik";
			break;
		case ']':
			Str = "nawias";
			str1 = "prawy";
			str2 = "kwadratowy";
			break;
		case '^':
			Str = "daszek";
			break;
		case '_':
			Str = "podkre�lenie";
			break;
		case '`':
			Str = "pa�kauko�na";
			break;
		case '{':
			Str = "nawias";
			str1 = "lewy";
			str2 = "klamrowy";
			break;
		case '|':
			Str = "pa�ka";
			break;
		case '}':
			Str = "nawias";
			str1 = "prawy";
			str2 = "klamrowy";
			break;
		case '~':
			Str = "tylda";
			break;
		}

		++m_i;
		--m_n;
		if(!Str.IsEmpty())
		{
			return TRUE;
		}
	}
	return FALSE;
}

BOOL CDajSlowo::jestpolski(char c)
{
	return strchr("�󹜳�����ӥ������", c) ?
		TRUE : FALSE;
}
