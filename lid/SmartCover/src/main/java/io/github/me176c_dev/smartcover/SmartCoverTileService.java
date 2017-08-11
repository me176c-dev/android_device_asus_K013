package io.github.me176c_dev.smartcover;

import android.content.Context;
import android.graphics.drawable.Icon;
import android.os.SystemProperties;
import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;

public final class SmartCoverTileService extends TileService {

    private static final String SMART_COVER_PROPERTY = "persist.smart_cover";

    private static boolean isSmartCoverEnabled() {
        return SystemProperties.getBoolean(SMART_COVER_PROPERTY, true);
    }

    private static void setSmartCoverEnabled(boolean enabled) {
        SystemProperties.set(SMART_COVER_PROPERTY, enabled ? "1" : "0");
    }

    private void updateState() {
        Context context = getBaseContext();
        Tile tile = getQsTile();

        if (isSmartCoverEnabled()) {
            tile.setState(Tile.STATE_ACTIVE);
            tile.setIcon(Icon.createWithResource(context, R.drawable.ic_layers));
        } else {
            tile.setState(Tile.STATE_INACTIVE);
            tile.setIcon(Icon.createWithResource(context, R.drawable.ic_layers_clear));
        }

        tile.updateTile();
    }

    @Override
    public void onStartListening() {
        updateState();
    }

    @Override
    public void onClick() {
        setSmartCoverEnabled(!isSmartCoverEnabled());
        updateState();
    }

}
