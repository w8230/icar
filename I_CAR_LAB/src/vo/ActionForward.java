package vo;

//포워딩에 관련된 정보를 저장하는 클래스
//포워딩할때 redirect 여부, 포워딩할 경로값에 대한 지정

public class ActionForward {
   private boolean isRedirect = false;
   private String Path = null;
   
   public boolean isRedirect() {
      return isRedirect;
   }
   public void setRedirect(boolean isRedirect) {
      this.isRedirect = isRedirect;
   }
   public String getPath() {
      return Path;
   }
   public void setPath(String Path) {
      this.Path = Path;
   }
}