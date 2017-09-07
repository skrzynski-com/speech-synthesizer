#include "ktrl.h"

istream& ktrl(istream& s)
{
 if(!s.good())
 {
	throw "Blad wejscia.";
 }
 return s;
}
