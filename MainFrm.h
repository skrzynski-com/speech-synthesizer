// MainFrm.h : interface of the CMainFrame class
//
/////////////////////////////////////////////////////////////////////////////

class CMainFrame : public CFrameWnd
{
public:
//protected: // create from serialization only
	CMainFrame();
	void Mow();
//	DECLARE_DYNCREATE(CMainFrame)

// Attributes
public:
	BOOL m_bWylaczanie;
	CMowa *m_pMowa;
	CDajSlowo *m_pDs;
	CCiceroView *m_pView;
	CString m_str;

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMainFrame)
	public:
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	protected:
	virtual BOOL OnCreateClient(LPCREATESTRUCT, CCreateContext*);
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CMainFrame();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

// Generated message map functions
protected:
	//{{AFX_MSG(CMainFrame)
	//}}AFX_MSG
	afx_msg LRESULT OnMMWomDone(WPARAM wParam, LPARAM lParam);
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////
