// CiceroView.cpp : implementation of the CCiceroView class
//

#include "stdafx.h"
#include "Cicero.h"
#include "CiceroView.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CCiceroView

IMPLEMENT_DYNCREATE(CCiceroView, CView)

BEGIN_MESSAGE_MAP(CCiceroView, CView)
	//{{AFX_MSG_MAP(CCiceroView)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CCiceroView construction/destruction

CCiceroView::CCiceroView()
{
	// TODO: add construction code here

	LOGFONT lf;
	memset(&lf,0,sizeof(LOGFONT));
	lf.lfHeight			= 100;
	lf.lfCharSet		= ANSI_CHARSET;
	lf.lfOutPrecision	= OUT_DEFAULT_PRECIS;
	lf.lfClipPrecision	= OUT_DEFAULT_PRECIS;
	lf.lfQuality		= DEFAULT_QUALITY;
	CString str;
	str.LoadString(IDS_FONTNAME);
	strcpy(lf.lfFaceName,(LPCTSTR)str);

	VERIFY(m_font.CreateFontIndirect(&lf));
}

CCiceroView::~CCiceroView()
{
	m_font.DeleteObject();
}

BOOL CCiceroView::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: Modify the Window class or styles here by modifying
	//  the CREATESTRUCT cs

	return CView::PreCreateWindow(cs);
}

/////////////////////////////////////////////////////////////////////////////
// CCiceroView drawing

void CCiceroView::OnDraw(CDC* pDC)
{
	// TODO: add draw code for native data here
	if(!m_strSlowo.IsEmpty())
	{
		CFont *pOldfont;
		pOldfont = (CFont *)pDC->SelectObject(&m_font);

		CRect rect;
		GetClientRect(&rect);

		VERIFY(pDC->DrawText( m_strSlowo,
			&rect, DT_CENTER|DT_VCENTER|DT_SINGLELINE));

		pDC->SelectObject(pOldfont);
	}
}

/////////////////////////////////////////////////////////////////////////////
// CCiceroView diagnostics

#ifdef _DEBUG
void CCiceroView::AssertValid() const
{
	CView::AssertValid();
}

void CCiceroView::Dump(CDumpContext& dc) const
{
	CView::Dump(dc);
}

#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CCiceroView message handlers
