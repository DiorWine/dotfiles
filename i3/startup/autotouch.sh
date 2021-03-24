#!/bin/bash
# Tap Enable


TouchPad_ID=$( xinput | grep "[Tt]ouch[Pp]ad" | cut -f2 | tr -cd '[:digit:]' )

Tapping_Enabled_ID=$( xinput list-props $TouchPad_ID | grep "Tapping Enabled (" \
                      | cut -f2 | tr -cd '[:digit:]' )
Natural_scrolling_id=`xinput list-props $TouchPad_ID | grep "Natural Scrolling Enabled (" \
                      | cut -d'(' -f2 | cut -d')' -f1`
xinput set-prop $TouchPad_ID $Tapping_Enabled_ID 1
xinput set-prop $TouchPad_ID $Natural_scrolling_id 1
