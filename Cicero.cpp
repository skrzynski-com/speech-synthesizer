// Cicero.cpp : Defines the class behaviors for the application.
//

#include "stdafx.h"

#include "Cicero.h"
#include "mowa.h"
#include "ds.h"
class CCiceroView;
#include "MainFrm.h"
#include "locale.h"
//#include <stdio.h>

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CCiceroApp

BEGIN_MESSAGE_MAP(CCiceroApp, CWinApp)
	//{{AFX_MSG_MAP(CCiceroApp)
	ON_COMMAND(ID_APP_ABOUT, OnAppAbout)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG_MAP
	// Standard file based document commands
	ON_COMMAND(ID_FILE_NEW, CWinApp::OnFileNew)
	ON_COMMAND(ID_FILE_OPEN, CWinApp::OnFileOpen)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CCiceroApp construction

CCiceroApp::CCiceroApp()
{
	// TODO: add construction code here,
	// Place all significant initialization in InitInstance
	m_pFin = NULL;
}

CCiceroApp::~CCiceroApp()
{
	if(m_pFin)
	{
		fclose(m_pFin);
	}
}


/////////////////////////////////////////////////////////////////////////////
// The one and only CCiceroApp object

CCiceroApp theApp;

/////////////////////////////////////////////////////////////////////////////
// CAboutDlg dialog used for App About

class CAboutDlg : public CDialog
{
public:
	CAboutDlg();

// Dialog Data
	//{{AFX_DATA(CAboutDlg)
	enum { IDD = IDD_ABOUTBOX };
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CAboutDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	//{{AFX_MSG(CAboutDlg)
		// No message handlers
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

CAboutDlg::CAboutDlg() : CDialog(CAboutDlg::IDD)
{
	//{{AFX_DATA_INIT(CAboutDlg)
	//}}AFX_DATA_INIT
}

void CAboutDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CAboutDlg)
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CAboutDlg, CDialog)
	//{{AFX_MSG_MAP(CAboutDlg)
		// No message handlers
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

// App command to run the dialog
void CCiceroApp::OnAppAbout()
{
	CAboutDlg aboutDlg;
	aboutDlg.DoModal();
}

/////////////////////////////////////////////////////////////////////////////
// CCiceroApp commands
/////////////////////////////////////////////////////////////////////////////
// CCiceroApp initialization

BOOL CCiceroApp::InitInstance()
{
try{
	setlocale(LC_ALL, _T(""));

	// Parse command line for standard shell commands, DDE, file open
	CCommandLineInfo cmdInfo;
	ParseCommandLine(cmdInfo);

	if(cmdInfo.m_strFileName.IsEmpty())
	{
		CAboutDlg about;
		about.DoModal();
		return TRUE;
	}

	if(!(m_pFin = fopen((LPCTSTR)cmdInfo.m_strFileName, "rt")))
	{
		throw (UINT)IDS_FILEERROR;
	}

	CMainFrame* pMainFrame = new CMainFrame;
	pMainFrame->m_pMowa = new CMowa(m_hInstance);

	if (!pMainFrame->Create( NULL, "Cicero"))
	{
		return FALSE;
	}
	m_pMainWnd = pMainFrame;

	pMainFrame->ShowWindow(m_nCmdShow);
	pMainFrame->UpdateWindow();
	pMainFrame->Mow();
}
catch(UINT uint)
{
	AfxMessageBox(uint);
	return FALSE;
}
	return TRUE;
}
