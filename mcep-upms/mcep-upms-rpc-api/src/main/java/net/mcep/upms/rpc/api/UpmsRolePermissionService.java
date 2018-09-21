package net.mcep.upms.rpc.api;

import com.alibaba.fastjson.JSONArray;
import net.mcep.common.base.BaseService;
import net.mcep.upms.dao.model.UpmsRolePermission;
import net.mcep.upms.dao.model.UpmsRolePermissionExample;

/**
* UpmsRolePermissionService接口
* Created by shuzheng on 2017/3/20.
*/
public interface UpmsRolePermissionService extends BaseService<UpmsRolePermission, UpmsRolePermissionExample> {

    /**
     * 角色权限
     * @param datas 权限数据
     * @param id 角色id
     * @return
     */
    int rolePermission(JSONArray datas, int id);

}