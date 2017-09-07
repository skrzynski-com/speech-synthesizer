#ifndef DF_H
# define DF_H
# include <afx.h>
# include <ctype.h>
# include "fonem.h"

#define ROZMPRZYP 74

extern CFonem przyporzadkowania[];

class CDajFonem
{
public:

	CDajFonem(CString *pStr):m_pStr(pStr)
	{
		m_i = 0;
		m_n = pStr->GetLength();
	}
	BOOL DajFonem(CFonem &fonem);

private:
	CString *m_pStr;
	int m_i, m_n;
};

#endif //DF_H
