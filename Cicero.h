// Cicero.h : main header file for the CICERO application
//

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// CCiceroApp:
// See Cicero.cpp for the implementation of this class
//

class CCiceroApp : public CWinApp
{
public:
	CCiceroApp();
	~CCiceroApp();

	FILE *m_pFin;
// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CCiceroApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CCiceroApp)
	afx_msg void OnAppAbout();
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////
extern CCiceroApp theApp;
