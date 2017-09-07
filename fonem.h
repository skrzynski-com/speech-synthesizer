#ifndef FONEM_H
# define FONEM_H

class CFonem
{
public:
/*
	enum gloska {SPOLGLOSKA, SAMOGLOSKA};
	enum dzwiecznosc {DZWIECZNA, BEZDZWIECZNA};
	enum szczelinowosc {SZCZELINOWA, ZWARTA, POLOTWARTA, ZWARTOSZCZELINOWA};
//	CFonem(enum gloska g, enum dzwiecznosc d, enum szczelinowosc s):
//		m_g(g),m_d(d),m_s(s){}

	BOOL jestspolgloska (){return m_g == SPOLGLOSKA;}
	BOOL jestsamogloska (){return m_g == SAMOGLOSKA;}

	BOOL jestdzwieczna (){return m_g == DZWIECZNA;}
	BOOL jestbezdzwieczna (){return m_g == BEZDZWIECZNA;}

	BOOL jestszczelinowa (){return m_s == SZCZELINOWA;}
	BOOL jestzwarta (){return m_s == ZWARTA;}
	BOOL jestpolotwarta (){return m_s == POLOTWARTA;}
	BOOL jestzwartoszczelinowa (){return m_s == ZWARTOSZCZELINOWA;}
*/
//private:
	char *m_s;
	int m_nr;
/*
	enum gloska m_g;
	enum dzwiecznosc m_d;
	enum szczelinowosc m_s;
*/
};

#endif //FONEM_H
