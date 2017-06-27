package io.github.me176c_dev.headphonetoggle;

import android.content.Context;
import android.graphics.drawable.Icon;
import android.media.AudioSystem;
import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;
import android.util.Log;

import static android.media.AudioSystem.AUDIO_STATUS_OK;
import static android.media.AudioSystem.DEVICE_OUT_WIRED_HEADPHONE;
import static android.media.AudioSystem.DEVICE_STATE_AVAILABLE;
import static android.media.AudioSystem.DEVICE_STATE_UNAVAILABLE;

public final class HeadphoneTileService extends TileService {

    private static boolean isHeadphoneAttached() {
        return AudioSystem.getDeviceConnectionState(DEVICE_OUT_WIRED_HEADPHONE, "") == DEVICE_STATE_AVAILABLE;
    }

    private static void setHeadphoneAttached(boolean state) {
        int result = AudioSystem.setDeviceConnectionState(DEVICE_OUT_WIRED_HEADPHONE,
                state ? DEVICE_STATE_AVAILABLE : DEVICE_STATE_UNAVAILABLE, "", "");
        if (result != AUDIO_STATUS_OK) {
            Log.e("HeadphoneToggle", "Failed to change headphone connection state: " + result);
        }
    }

    private void updateState() {
        Context context = getBaseContext();
        Tile tile = getQsTile();

        if (isHeadphoneAttached()) {
            tile.setLabel(context.getString(R.string.headphones));
            tile.setIcon(Icon.createWithResource(context, R.drawable.ic_headset));
        } else {
            tile.setLabel(context.getString(R.string.speaker));
            tile.setIcon(Icon.createWithResource(context, R.drawable.ic_speaker_phone));
        }

        tile.updateTile();
    }

    @Override
    public void onStartListening() {
        updateState();
    }

    @Override
    public void onClick() {
        setHeadphoneAttached(!isHeadphoneAttached());
        updateState();
    }

}
