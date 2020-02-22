#!/bin/bash
# Tap Enable


TouchPad_ID=$( xinput | grep "[Tt]ouch[Pp]ad" | cut -f2 | tr -cd '[:digit:]' )

Tapping_Enabled_ID=$( xinput list-props $TouchPad_ID | grep "Tapping Enabled (" | cut -f2 | tr -cd '[:digit:]' )

xinput set-prop $TouchPad_ID $Tapping_Enabled_ID 1
