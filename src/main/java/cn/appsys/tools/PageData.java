package cn.appsys.tools;

import java.util.List;

public class PageData<T> {
    // 分页数据
    private List<T> list;
    // 总记录数
    private int count;
    // 当前页码
    private int pageIndex;
    // 每页显示的数量
    private int pageSize;

    public PageData(int count, Integer pageIndex, Integer pageSize) {
        this.count = count;
        this.pageSize = pageSize;
        int total = getTotal();
        if (pageIndex>total){
            this.pageIndex = total;
        }else{
            this.pageIndex = pageIndex;
        }
    }

    // 计算总页数
    public int getTotal() {
        // ( 10 -1) / 5 + 1 ==> 2
        // ( 13 -1) / 5 + 1 ==> 3
        return (count - 1) / pageSize + 1;
    }

    // 计算上一页
    public int getPrev(){
        if (pageIndex > 1){
            return pageIndex -1;
        }

        return 1;
    }

    // 计算下一页
    public int getNext(){
        int total = getTotal();
        if (pageIndex < total ){
            return pageIndex +1;
        }

        return total;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
}
