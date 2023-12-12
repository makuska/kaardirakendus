package tlu.kaardirakendus.akustika.util;

import jakarta.servlet.http.HttpServletRequest;
import lombok.experimental.UtilityClass;

@UtilityClass
public class ServerRequestUtil {

    public static String getBaseUrl(HttpServletRequest request) {
        String scheme = request.getHeader("X-Forwarded-Proto") != null
                ? request.getHeader("X-Forwarded-Proto")
                : request.getScheme();
        String serverName = request.getHeader("X-Forwarded-Host") != null
                ? request.getHeader("X-Forwarded-Host")
                : request.getServerName();

        int port = request.getHeader("X-Forwarded-Port") != null
                ? Integer.parseInt(request.getHeader("X-Forwarded-Port"))
                : request.getServerPort();

        String baseUrl;

        if ("localhost".equals(serverName) || "127.0.0.1".equals(serverName)) {
            baseUrl = String.format("%s://%s:%d", scheme, serverName, port);
        } else {
            baseUrl = String.format("%s://%s", scheme, serverName);
        }

        return baseUrl;
    }

}
