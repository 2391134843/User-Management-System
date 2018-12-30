package entity;

/**
 * 实体类：
 * 实体与数据表字段一一对应。
 *
 */
public class Address {

    private Integer id;         // 编号
    private Users user;         // 所属用户
    private Boolean defaultAddr;  // 是否默认地址
    private String nation;      // 国家
    private String province;    // 省
    private String city;        // 市
    private String country;     // 县
    private String street;      // 街道
    private String remark;      // 描述

    /**
     * 获取用户id
     * @return 返回用户的id号
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置用户id
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 返回某个用户的信息
     * @return user 具体返回用户
     */
    public Users getUser() {
        return user;
    }

    /**
     *
     * @param user
     */
    public void setUser(Users user) {
        this.user = user;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    public Boolean getDefaultAddr() {
        return defaultAddr;
    }

    public void setDefaultAddr(Boolean defaultAddr) {
        this.defaultAddr = defaultAddr;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public String toString() {
        return "Address{" +
                "id=" + id +
                ", user=" + user +
                ", isDefault=" + defaultAddr +
                ", province='" + province + '\'' +
                ", city='" + city + '\'' +
                ", country='" + country + '\'' +
                ", street='" + street + '\'' +
                ", remark='" + remark + '\'' +
                '}';
    }
}
