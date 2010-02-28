// $Id$
//
// Copyright (C) 2010 The OpenNX Team
// Author: Fritz Elfert
//
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU Library General Public License as
// published by the Free Software Foundation; either version 2 of the
// License, or (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU Library General Public
// License along with this program; if not, write to the
// Free Software Foundation, Inc.,
// 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
//

#ifndef _SimpleXauth_H_
#define _SimpleXauth_H_

#if defined(__GNUG__) && !defined(__APPLE__)
#pragma interface "SimpleXauth.cpp"
#endif

// Defines canonicalized platform names (e.g. __WXMSW__)
#include <wx/platform.h>

# if defined(__WXMSW__) || defined(APP_TESTXAUTH)
class SimpleXauthPrivate;

class SimpleXauth
{
    public:
        SimpleXauth(wxString filename);
        ~SimpleXauth();
        void AddDisplay(int);
        wxString GetCookie();

    private:
        bool writeFile();
        bool readFile();
        SimpleXauthPrivate *m_pPrivate;
};

# endif
#endif
