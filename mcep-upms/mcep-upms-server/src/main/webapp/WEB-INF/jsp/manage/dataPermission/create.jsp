﻿<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<div id="createDialog" class="crudDialog">
	<form id="createForm" method="post">
		<%--<div class="form-group">--%>
			<%--<label for="permissionId">权限</label>--%>
			<%--<input id="permissionId" type="text" class="form-control" name="permissionId" maxlength="20">--%>
		<%--</div>--%>

		<div class="form-group">
			<div class="fg-line">
				<label for="permissionId">权限</label>
				<select id="permissionId" class="form-control" name="permissionId" style="float:left" >
					<option  value="">请选择</option>
				</select>
			</div>
		</div>

		<%--<div class="form-group">--%>
			<%--<label for="resourceId">资源</label>--%>
			<%--<input id="resourceId" type="text" class="form-control" name="resourceId" maxlength="20">--%>
		<%--</div>--%>

			<div class="form-group">
					<label for="resourceId">资源</label>
					<select id="resourceId" class="form-control" name="resourceId" style="float:left" >
						<option  value="">请选择</option>
					</select>
			</div>
		<div class="form-group">
			<%--<label for="authorizationType">授权类型</label>--%>
			<%--<input id="authorizationType" type="text" class="form-control" name="authorizationType" maxlength="300">--%>
			<tr>
				<td>
					<%--<input id="authorizationType" type="hidden" name="authorizationType" >--%>
					<label>授权类型</label>
				</td>
				<td>
					<select id="authorizationType" name="authorizationType" style="width:100%;" >
						<option  value="">请选择</option>
						<option  value="人员">人员</option>
						<option  value="岗位">岗位</option>
						<option  value="角色">角色</option>
					</select>
				</td>
				<td colspan="4">
				</td>
			</tr>
		</div>
		<div class="form-group text-right dialog-buttons">
			<a class="waves-effect waves-button" href="javascript:;" onclick="createSubmit();">保存</a>
			<a class="waves-effect waves-button" href="javascript:;" onclick="createDialog.close();">取消</a>
		</div>
	</form>
</div>
<script>


    function initSelect2() {
        initPermission();
        initResource();
    }
    function initPermission() {
        $.getJSON('/manage/permission/list',{limit: 10000}, function(json) {
            var datas = [{id: 0, text: '请选择'}];
            for (var i = 0; i < json.rows.length; i ++) {
                var data = {};
                data.id = json.rows[i].permissionId;
                data.text = json.rows[i].name;
                datas.push(data);
            }
            $('#permissionId').empty();
            $('#permissionId').select2({
                data : datas
            });
            $('span.select2').css('margin-left','100px');
            $('span.select2').css('width','180px');
        });
    }

    function initResource() {
        $.getJSON('/manage/resource/list',{limit: 10000}, function(json) {
            var datas = [{id: 0, text: '请选择'}];
            for (var i = 0; i < json.rows.length; i ++) {
                var data = {};
                data.id = json.rows[i].resourceId;
                data.text = json.rows[i].resourceName;
                datas.push(data);
            }
            $('#resourceId').empty();
            $('#resourceId').select2({
                data : datas
            });
            $('span.select2').css('margin-left','100px');
            $('span.select2').css('width','180px');
        });
    }



function createSubmit() {
    $.ajax({
        type: 'post',
        url: '${basePath}/manage/dataPermission/create',
        data: $('#createForm').serialize(),
        beforeSend: function() {
            if ($('#permissionId').val() == '') {
                $('#permissionId').focus();
                return false;
            }
			if ($('#resourceId').val() == '') {
				$('#resourceId').focus();
				return false;
			}
        },
        success: function(result) {
			if (result.code != 1) {
				if (result.data instanceof Array) {
					$.each(result.data, function(index, value) {
						$.confirm({
							theme: 'dark',
							animation: 'rotateX',
							closeAnimation: 'rotateX',
							title: false,
							content: value.errorMsg,
							buttons: {
								confirm: {
									text: '确认',
									btnClass: 'waves-effect waves-button waves-light'
								}
							}
						});
					});
				} else {
						$.confirm({
							theme: 'dark',
							animation: 'rotateX',
							closeAnimation: 'rotateX',
							title: false,
							content: result.data.errorMsg,
							buttons: {
								confirm: {
									text: '确认',
									btnClass: 'waves-effect waves-button waves-light'
								}
							}
						});
				}
			} else {
				createDialog.close();
				$table.bootstrapTable('refresh');
			}
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
			$.confirm({
				theme: 'dark',
				animation: 'rotateX',
				closeAnimation: 'rotateX',
				title: false,
				content: textStatus,
				buttons: {
					confirm: {
						text: '确认',
						btnClass: 'waves-effect waves-button waves-light'
					}
				}
			});
        }
    });
}
</script>