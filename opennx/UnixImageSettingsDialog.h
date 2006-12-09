/////////////////////////////////////////////////////////////////////////////
// Name:        UnixImageSettingsDialog.h
// Purpose:     
// Author:      Fritz Elfert
// Modified by: 
// Created:     06/25/04 00:38:55
// RCS-ID:      $Id$
// Copyright:   Copyright 2004 Millenux GmbH
// Licence:     LGPL
/////////////////////////////////////////////////////////////////////////////

#ifndef _UNIXIMAGESETTINGSDIALOG_H_
#define _UNIXIMAGESETTINGSDIALOG_H_

#if defined(__GNUG__) && !defined(__APPLE__)
#pragma interface "UnixImageSettingsDialog.cpp"
#endif

/*!
 * Includes
 */

////@begin includes
#include "UnixImageSettingsDialog_symbols.h"
#include "wx/xrc/xmlres.h"
#include "wx/valgen.h"
#include "wx/statline.h"
////@end includes

/*!
 * Forward declarations
 */

////@begin forward declarations
////@end forward declarations
class MyXmlConfig;

/*!
 * Control identifiers
 */

////@begin control identifiers
#define ID_DIALOG_IMAGE_X11 10086
#define SYMBOL_UNIXIMAGESETTINGSDIALOG_STYLE wxCAPTION|wxRESIZE_BORDER|wxSYSTEM_MENU|wxCLOSE_BOX
#define SYMBOL_UNIXIMAGESETTINGSDIALOG_TITLE _("Unix Image Settings - OpenNX")
#define SYMBOL_UNIXIMAGESETTINGSDIALOG_IDNAME ID_DIALOG_IMAGE_X11
#define SYMBOL_UNIXIMAGESETTINGSDIALOG_SIZE wxSize(114, 75)
#define SYMBOL_UNIXIMAGESETTINGSDIALOG_POSITION wxDefaultPosition
////@end control identifiers

/*!
 * Compatibility
 */

#ifndef wxCLOSE_BOX
#define wxCLOSE_BOX 0x1000
#endif
#ifndef wxFIXED_MINSIZE
#define wxFIXED_MINSIZE 0
#endif

/*!
 * UnixImageSettingsDialog class declaration
 */

class UnixImageSettingsDialog: public wxDialog
{    
    DECLARE_CLASS( UnixImageSettingsDialog )
    DECLARE_EVENT_TABLE()

public:
    /// Constructors
    UnixImageSettingsDialog( );
    UnixImageSettingsDialog( wxWindow* parent, wxWindowID id = SYMBOL_UNIXIMAGESETTINGSDIALOG_IDNAME, const wxString& caption = SYMBOL_UNIXIMAGESETTINGSDIALOG_TITLE, const wxPoint& pos = SYMBOL_UNIXIMAGESETTINGSDIALOG_POSITION, const wxSize& size = SYMBOL_UNIXIMAGESETTINGSDIALOG_SIZE, long style = SYMBOL_UNIXIMAGESETTINGSDIALOG_STYLE );

    /// Creation
    bool Create( wxWindow* parent, wxWindowID id = SYMBOL_UNIXIMAGESETTINGSDIALOG_IDNAME, const wxString& caption = SYMBOL_UNIXIMAGESETTINGSDIALOG_TITLE, const wxPoint& pos = SYMBOL_UNIXIMAGESETTINGSDIALOG_POSITION, const wxSize& size = SYMBOL_UNIXIMAGESETTINGSDIALOG_SIZE, long style = SYMBOL_UNIXIMAGESETTINGSDIALOG_STYLE );
    void SetConfig(MyXmlConfig *);

private:
    /// Creates the controls and sizers
    void CreateControls();

////@begin UnixImageSettingsDialog event handler declarations

    /// wxEVT_COMMAND_BUTTON_CLICKED event handler for wxID_OK
    void OnOKClick( wxCommandEvent& event );

////@end UnixImageSettingsDialog event handler declarations

////@begin UnixImageSettingsDialog member function declarations

    /// Retrieves bitmap resources
    wxBitmap GetBitmapResource( const wxString& name );

    /// Retrieves icon resources
    wxIcon GetIconResource( const wxString& name );
////@end UnixImageSettingsDialog member function declarations

    /// Should we show tooltips?
    static bool ShowToolTips();

////@begin UnixImageSettingsDialog member variables
    wxCheckBox* m_pCtrlUseJpegQuality;
    wxSlider* m_pCtrlJpegQuality;
private:
    bool m_bImageEncodingPNG;
    bool m_bImageEncodingPlainX;
    bool m_bImageEncodingJpeg;
    bool m_bUseJpegQuality;
    int m_iJpegQuality;
    bool m_bDisableRender;
    bool m_bDisableBackingstore;
    bool m_bDisableComposite;
    bool m_bDisableShmem;
    bool m_bDisableShpix;
////@end UnixImageSettingsDialog member variables

    MyXmlConfig *m_pCfg;
};

#endif
    // _UNIXIMAGESETTINGSDIALOG_H_