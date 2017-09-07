#include <afx.h>
#include <windows.h>
#include <locale.h>
#include <iostream.h>
#include "ktrl.h"
#include "ds.h"
#include "df.h"
#include "mowa.h"

int WINAPI WinMain(
    HINSTANCE  hInstance,	// handle to current instance
    HINSTANCE  hPrevInstance,	// handle to previous instance
    LPSTR  lpCmdLine,	// pointer to command line
    int  nShowCmd 	// show state of window
   )
{
	try {
		setlocale(LC_ALL, _T(""));

		CMowa mowa(hInstance);
		for(;;)
		{
			char buf[1000];

			cin>>buf;
/*!!!			if(cin.eof())
			{
				break;
			}*/

			{
				CString strCaly(buf);

				strCaly = "baba";

				strCaly.OemToAnsi();
				strCaly.MakeLower();

				CDajSlowo ds(&strCaly);

				CString str;
				while(ds.DajSlowo(str))
				{
					cout<<(LPCTSTR)str<<endl;
					CDajFonem df(&str);

					CFonem fonem;
					while(df.DajFonem(fonem))
					{
						cout<<fonem.m_s<<endl;
						mowa.DodajFonem(fonem);
					}
					mowa.Mow();
//					for(;;);
				}
			}

		}
	}
	catch(char *s)
	{
		cout<<s;
	}
/*
	catch(...)
	{
		cout<<"Nie znany wyjatek";
	}
*/
	return 0;
}