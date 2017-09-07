#include "stdafx.h"
class CCiceroView;
#include "cicero.h"
#include "ciceroview.h"
#include "mowa.h"

void CMowa::ZamknijUrzadzenie()
{
	if(m_bStart)
	{
		waveOutReset(m_hwo);
		waveOutClose(m_hwo);
	}
}

CMowa::CMowa(HINSTANCE  hInstance)
{
	m_bStart = FALSE;

	m_iNaglRozm = 0;

	m_iRozmiar = 0;

	HGLOBAL hResource;
	HRSRC hFind;

	CString str;
	CString strNr;
	LPCTSTR lpstr;
	for(int i=1; i<=49; ++i)
	{
		str = "WAVE";
		strNr.Format("%d", i);

		str += strNr;
	
		lpstr = (LPCTSTR)str;

		hFind = FindResource(hInstance,lpstr,"WAVE");
		hResource = LoadResource(hInstance, hFind);
		if(hResource)
		{
			LPSTR lpres = (LPSTR)LockResource(hResource);
			int size = SizeofResource(hInstance, hFind);

			LPWAVEFORMATEX lpwaveformatex = 
				(LPWAVEFORMATEX)((char *)&(((LPMMCKINFO)lpres)->dwDataOffset)+8);
			m_dzwieki[i].m_pNaglowek = (LPSTR)lpwaveformatex;
			m_dzwieki[i].m_iRozmiar = (int)*(DWORD *)((char *)lpwaveformatex+sizeof(WAVEFORMATEX)+2);
			m_dzwieki[i].m_pDzwiek = (char *)lpwaveformatex+sizeof(WAVEFORMATEX)+6;
			if(!m_iNaglRozm)
			{
				m_iNaglRozm = m_dzwieki[i].m_pDzwiek - m_dzwieki[i].m_pNaglowek;
			}
		}
	}
}

void CMowa::DodajFonem(CFonem& fonem)
{
	int rozmiar = m_dzwieki[fonem.m_nr].m_iRozmiar;

	if(m_iRozmiar+rozmiar>BUFROZM)
	{
		return;
	}
	char *pd = &m_pBufor[m_iRozmiar];
	char *ps;

	if(!m_iRozmiar)
	{
		ps = m_dzwieki[fonem.m_nr].m_pNaglowek;
		rozmiar += m_dzwieki[fonem.m_nr].m_pDzwiek-m_dzwieki[fonem.m_nr].m_pNaglowek;//!!!
		memcpy(pd, 
			ps,
			rozmiar);
		m_iRozmiar += rozmiar;
	} else {
		ps = m_dzwieki[fonem.m_nr].m_pDzwiek;

		int iNakladka = (rozmiar / 5);
		int i;

		if(pd-iNakladka < m_pBufor)
		{
			iNakladka = pd - m_pBufor;
		}

		for(i = 0; i<iNakladka; ++i)
		{
			m_pMieszane[i*2] = pd[i-iNakladka];
		}

		for(i = 0; i<iNakladka; ++i)
		{
			m_pMieszane[i*2+1] = ps[i];
		}

		memcpy(pd - iNakladka, m_pMieszane, iNakladka*2);
		memcpy(pd+iNakladka, 
			ps+iNakladka,
			rozmiar-iNakladka);
		m_iRozmiar += rozmiar;
	}
}

void CMowa::Mow()
{
	m_lpwaveformatex = (LPWAVEFORMATEX)m_pBufor;
	*(DWORD *)((char *)m_lpwaveformatex+sizeof(WAVEFORMATEX)+2) = m_iRozmiar;

	MMRESULT result;
	if(!m_bStart)
	{

		result = waveOutOpen(
			&m_hwo, 
			WAVE_MAPPER,
			m_lpwaveformatex,
			(DWORD)theApp.m_pMainWnd->m_hWnd,
			0,
			CALLBACK_WINDOW
		); 

		if( result != MMSYSERR_NOERROR )
		{
			throw (UINT)IDS_WAVEERROR;
		}
		m_bStart = TRUE;
	}

	memset(&m_wavehdr,0,sizeof(WAVEHDR));
	
	m_wavehdr.lpData = (char *)m_lpwaveformatex+sizeof(WAVEFORMATEX)+6;
	m_wavehdr.dwBufferLength =  m_iRozmiar - m_iNaglRozm;
	m_wavehdr.dwFlags = WHDR_BEGINLOOP|WHDR_ENDLOOP;
	m_wavehdr.dwLoops = 1;

	result = waveOutPrepareHeader(
		m_hwo, 
		&m_wavehdr, 
		sizeof(WAVEHDR)
	); 
 
	if( result != MMSYSERR_NOERROR )
	{
		return;
	}

	result = waveOutWrite(
		m_hwo, 
		&m_wavehdr, 
		sizeof(WAVEHDR)
	); 

	if( result != MMSYSERR_NOERROR )
	{
		return;
	}
	m_iRozmiar = 0;
}
