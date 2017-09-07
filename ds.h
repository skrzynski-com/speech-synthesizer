#ifndef DS_H
# define DS_H
# include <afx.h>
# include <ctype.h>

class CDajSlowo
{
public:
	CDajSlowo(CString *pStr):m_pStr(pStr)
	{
		m_i = 0;
		m_n = pStr->GetLength();
	}
	BOOL DajSlowo(CString &Str);
private:
	BOOL jestpolski(char c);

	CString *m_pStr;
	CString str1;
	CString str2;
	int m_i, m_n;
};

#endif
