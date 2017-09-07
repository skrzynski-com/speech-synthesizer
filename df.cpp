#include "stdafx.h"
#include "df.h"

CFonem przyporzadkowania[] = 
{
	{"an",2}, {"a",1}, {"π",3},
	{"bi",5}, {"bj",5}, {"b",4},
	{"chi",10}, {"chj",10},	{"ci",9}, {"cj",9}, {"cz",8},{"ch",6}, {"c",7}, {"Ê",9},
	{"dzj",13}, {"dzi",13}, {"dz",14}, {"dü",13}, {"dø",12}, {"d",11},
	{"e",15},
	{"Í",16}, 
	{"fj",18}, {"fi",18}, {"f",17},
	{"gi",20}, {"gj",20}, {"g",19},
	{"h",6},
	{"in",22}, {"i",21},
	{"j",23},
	{"kj",25}, {"ki",25}, {"k",24}, 
	{"lj",27}, {"li",27}, {"l",26},
	{"≥",28},
	{"mj",30}, {"mi",30}, {"m",29}, 
	{"nk",32}, {"ni",33}, {"nj",33}, {"Ò",33}, {"n",31},
	{"o",34}, {"Û",35}, {"u",35}, 
	{"pj",37}, {"pi",37}, {"p",36},
	{"rz",49}, {"r",38},
	{"sz",40}, {"si",41}, {"sj",41}, {"ú",41}, {"s",39},
	{"t",42},
	{"vj",44}, {"vi",44}, {"wj",44}, {"wi",44}, {"w",43}, {"v",43},
	{"yn",46}, {"y",45},
	{"zj",48}, {"zi",48}, {"ü",48}, {"ø",49}, {"z",47}
};

BOOL CDajFonem::DajFonem(CFonem &fonem)
{
	if(m_n)
	{
		for(int i=0; i<ROZMPRZYP; ++i)
		{
			if(!(m_pStr->Mid(m_i, strlen(przyporzadkowania[i].m_s))).CompareNoCase(przyporzadkowania[i].m_s))
			{
				fonem.m_s = przyporzadkowania[i].m_s;
				fonem.m_nr = przyporzadkowania[i].m_nr;;
				i = strlen(fonem.m_s);
				m_i += i;
				m_n -= i;
				return TRUE;
			}
		}
	}
	return FALSE;
}
