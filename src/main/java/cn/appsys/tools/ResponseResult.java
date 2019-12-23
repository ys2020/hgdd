package cn.appsys.tools;

public class ResponseResult {

    private int code;
    private String message;
    private Object data;

    public ResponseResult(int code, String message, Object data) {
        this.code = code;
        this.message = message;
        this.data = data;
    }
    /**
     * 返回成功的响应对象(没有具体返回数据的时候)
     * @return
     */
    public static ResponseResult success(){
        return new ResponseResult(0,null,null);
    }
    /**
     * 返回成功的响应对象
     * @param data 成功时返回的数据
     * @return
     */
    public static ResponseResult success( Object data){
        return new ResponseResult(0,null,data);
    }
    /**
     * 返回成功的响应对象
     * @param code 失败时的状态码
     * @param message 失败时的信息
     * @return
     */
    public static ResponseResult fail( int code, String message){
        return new ResponseResult(code,message,null);
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
