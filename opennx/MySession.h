// $Id$
//
// Copyright (C) 2006 The OpenNX Team
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

#ifndef _MYSESSION_H_
#define _MYSESSION_H_

#include <wx/regex.h>

#include "MyXmlConfig.h"

class ConnectDialog;
class MyIPC;
class SessionWatch;
class MyXmlConfig;

class MySession : public wxEvtHandler
{
    DECLARE_CLASS(MySession);
    DECLARE_EVENT_TABLE();

public:
    typedef enum {
        None,
        Client,
        Server,
    } tSessionType;

    typedef enum {
        Unknown,
        Failed,
        Terminated,
        Running,
    } tSessionStatus;

    MySession();
    MySession(wxString dir, wxString status, wxString stype, wxString host, int port, wxString md5);
    MySession(const MySession &src);
    virtual ~MySession();

    // session admin
    wxString sGetCreationTime();
    wxString sGetPID() { return wxString::Format(_T("%d"), m_lPid); }
    wxString sGetPort() { return wxString::Format(_T("%d"), m_iPort); }
    const wxString& sGetHost() { return m_sHost; }
    const wxString& sGetMd5() { return m_sMd5; }
    const wxString& sGetDir() { return m_sDir; }
    tSessionStatus eGetSessionStatus() { return m_eSessionStatus; }
    tSessionType eGetSessionType() { return m_eSessionType; }
    void bSetTouched(bool b) { m_bTouched = b; }
    bool bGetTouched() { return m_bTouched; }
    long lGetPID() { return m_lPid; }
    bool bGetPidFromFile();
    void CheckState();
    bool IsValid() { return m_bValid; }
    MySession &operator =(const MySession &src);

    // connection setup
    bool Create(MyXmlConfig& cfg, const wxString password, wxWindow *parent = NULL);

private:
    // locals for connection setup
    typedef enum {
        STATE_HELLO,
        STATE_SHELLMODE,
        STATE_AUTHMODE,
        STATE_LOGIN,
        STATE_LIST_SESSIONS,
        STATE_PARSE_SESSIONS,
        STATE_START_SESSION,
        STATE_RESUME_SESSION,
        STATE_FINISH,
    } tConnectState;

    wxArrayString m_aParseBuffer;
    wxString getXauthCookie(int display = 0);
    wxString getXauthPath();
    wxString formatOptFilename();
    int getFirstFreePort(int);
    void startProxy();
    void startXserver();
    void startSharing();
    void parseSessions(bool moreAllowed);
    long intver(const wxString&);
    bool prepareCups();
    bool isCupsRunning();
    void printSsh(const wxString &s, bool doLog = true);
    void cleanupOldSessions();
    void clearSshKeys(const wxString &);
    ArrayOfShareGroups getActiveCupsPrinters();
    virtual void OnSshEvent(wxCommandEvent &);
    virtual void OnSessionEvent(wxCommandEvent &);
    virtual void OnServiceEvent(wxCommandEvent &);

    tConnectState m_eConnectState;
    bool m_bGotError;
    bool m_bSslTunneling;
    bool m_bSessionRunning;
    bool m_bEsdRunning;
    bool m_bSessionEstablished;
    bool m_bCollectSessions;
    bool m_bCollectConfig;
    bool m_Abort;
    bool m_bCupsRunning;
    bool m_bRemoveKey;
    int m_iProgress;
    long m_lEsdPort;
    unsigned long m_nSessionPushLength;
    wxLog *m_pSshLog;
    MyIPC *m_pNxSsh;
    MyXmlConfig *m_pCfg;
    ConnectDialog *m_pDlg;
    wxString m_sConfigBuffer;
    wxString m_sClearPassword;
    wxString m_sSessionID;
    wxString m_sSessionType;
    wxString m_sSessionCache;
    wxString m_sSessionDisplay;
    wxString m_sProxyCookie;
    wxString m_sProxyIP;
    wxString m_sProxyPort;
    wxString m_sSmbPort;
    wxString m_sSubscription;
    wxString m_sAgentCookie;
    wxString m_sOptFilename;
    wxString m_sOffendingKey;
    wxString m_sSessionDir;
    wxString m_sUserDir;
    wxString m_sSysDir;
    wxString m_sXauthCookie;
    wxString m_sResumeName;
    wxString m_sResumeType;
    wxString m_sResumeId;
    wxString m_sTempDir;
    wxWindow *m_pParent;
    SessionWatch *m_pSessionWatch;

    // locals for admin tool
    bool m_bTouched;
    bool m_bValid;
    int m_iPort;
    long m_lPid;
    tSessionType m_eSessionType;
    tSessionStatus m_eSessionStatus;
    wxString m_sHost;
    wxString m_sMd5;
    wxString m_sDir;
    wxRegEx m_rePID;
};

#endif