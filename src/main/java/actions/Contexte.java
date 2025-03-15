package actions;

import com.opensymphony.xwork2.ActionSupport;
import facade.FacadeParis;
import facade.FacadeParisStaticImpl;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;
import java.util.Objects;

public abstract class Contexte extends ActionSupport implements SessionAware , ApplicationAware {
    private FacadeParis facadeParis;
    private Map<String, Object> session;

    public FacadeParis getFacadeParis() {
        return facadeParis;
    }
    public Map<String, Object> getSession() {
        return session;
    }

    @Override
    public void setApplication(Map<String, Object> map) {
        facadeParis = (FacadeParisStaticImpl) map.get("facadeParis");
        if(Objects.isNull(facadeParis)){
            facadeParis = new FacadeParisStaticImpl();
            map.put("facadeParis", facadeParis);
        }

    }

    @Override
    public void setSession(Map<String, Object> map) {
    this.session = map;
    }
}
