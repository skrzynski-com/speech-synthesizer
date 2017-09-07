// MainFrm.cpp : implementation of the CMainFrame class
//

#include "stdafx.h"
class CCiceroView;
#include "Cicero.h"
#include "ds.h"
#include "df.h"
#include "mowa.h"
#include "MainFrm.h"
#include "mmsystem.h"
#include "CiceroView.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMainFrame

//IMPLEMENT_DYNCREATE(CMainFrame, CFrameWnd)

BEGIN_MESSAGE_MAP(CMainFrame, CFrameWnd)
	//{{AFX_MSG_MAP(CMainFrame)
	//}}AFX_MSG_MAP
	ON_MESSAGE(MM_WOM_DONE, OnMMWomDone)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMainFrame construction/destruction

CMainFrame::CMainFrame()
{
	// TODO: add member initialization code here
	m_pMowa = NULL;
	m_pDs = NULL;
	m_pView = NULL;

	m_bWylaczanie = FALSE;
	m_pDs = new CDajSlowo(&m_str);
}

CMainFrame::~CMainFrame()
{
	m_bWylaczanie = TRUE;
	m_pMowa -> ZamknijUrzadzenie();
	if(m_pMowa)
	{
		delete m_pMowa;
	}
	if(m_pDs)
	{
		delete m_pDs;
	}
}

BOOL CMainFrame::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: Modify the Window class or styles here by modifying
	//  the CREATESTRUCT cs
	return CFrameWnd::PreCreateWindow(cs);
}

/////////////////////////////////////////////////////////////////////////////
// CMainFrame diagnostics

#ifdef _DEBUG
void CMainFrame::AssertValid() const
{
	CFrameWnd::AssertValid();
}

void CMainFrame::Dump(CDumpContext& dc) const
{
	CFrameWnd::Dump(dc);
}

#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CMainFrame message handlers

BOOL CMainFrame::OnCreateClient(LPCREATESTRUCT, CCreateContext*) 
{
	// TODO: Add your specialized code here and/or call the base class
	// create the new view

	CRuntimeClass* pNewViewClass = RUNTIME_CLASS(CCiceroView);

	CCreateContext context;
	context.m_pNewViewClass = pNewViewClass;
	context.m_pCurrentDoc = GetActiveDocument();

	CView* pNewView = STATIC_DOWNCAST(CView, CreateView(&context));
	if (pNewView != NULL)
	{
		// the new view is there, but invisible and not active...
		m_pView = (CCiceroView *)pNewView;
		pNewView->ShowWindow(SW_SHOW);
		pNewView->OnInitialUpdate();
		return TRUE;
	}
	
	return FALSE;
}

LRESULT CMainFrame::OnMMWomDone(WPARAM wParam, LPARAM lParam)
{
	HWAVEOUT hOutputDev = (HWAVEOUT)wParam;
	WAVEHDR *lpwvhdr = (WAVEHDR *)lParam;
	if(!m_bWylaczanie)
	{
		Mow();
	}
	return TRUE;
}

#define ROZMIAR 1024

void CMainFrame::Mow()
{
		CString str;
		do
		{
			str = m_str;
			if(!m_pDs->DajSlowo(str))
			{
				char buf[ROZMIAR];
				if(!fgets(buf, ROZMIAR, theApp.m_pFin))
				{
					return;
				}
				m_str = buf;
				delete m_pDs;
				m_pDs = new CDajSlowo(&m_str);
			}
		} while(str.IsEmpty());

		m_pView->m_strSlowo = str;
		m_pView->InvalidateRect(NULL);
		m_pView->UpdateWindow();

		str.MakeLower();
		CDajFonem df(&str);
		CFonem fonem;
		while(df.DajFonem(fonem))
		{
			m_pMowa->DodajFonem(fonem);
		}
		m_pMowa->Mow();
}
