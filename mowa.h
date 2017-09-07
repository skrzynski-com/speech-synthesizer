#ifndef MOW_H
# define MOW_H
# include "df.h"
# include <mmsystem.h>
# include <crtdbg.h>

#define BUFROZM 1000000
#define BUFMIESZROZM 34000

class CDzwiek
{
public:
	LPSTR m_pDzwiek;
	LPSTR m_pNaglowek;
	int	m_iRozmiar;
};

class CMowa
{
public:
	CMowa(HINSTANCE  hInstance);
	void DodajFonem(CFonem& fonem);
	void Mow();
	void ZamknijUrzadzenie();
private:
	CDzwiek m_dzwieki[ROZMPRZYP];
	char m_pBufor[BUFROZM];
	char m_pMieszane[BUFMIESZROZM];
	int m_iRozmiar;
	HWAVEOUT m_hwo;
	LPWAVEFORMATEX m_lpwaveformatex;
	WAVEHDR m_wavehdr;
	BOOL m_bStart;
	int m_iNaglRozm;
};

#endif //MOW_H
