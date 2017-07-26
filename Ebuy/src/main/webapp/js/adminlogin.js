 var _menus = {"menus":[
						{"menuid":"1","icon":"icon-sys","menuname":"用户管理",
							"menus":[{"menuname":"管理员管理","icon":"icon-nav","url":""},
									{"menuname":"用户管理","icon":"icon-add","url":""}
									
								]
						},{"menuid":"8","icon":"icon-sys","menuname":"商品管理",
							"menus":[{"menuname":"商品下架","icon":"icon-nav","url":"shop1"},
							         {"menuname":"添加商品","icon":"icon-nav","url":"insertproduct"},
									{"menuname":"商品分类","icon":"icon-nav","url":"demo1"}
								]
						},{"menuid":"56","icon":"icon-sys","menuname":"订单管理",
							"menus":[{"menuname":"订单列表","icon":"icon-nav","url":"order1"},
									{"menuname":"订单处理","icon":"icon-nav","url":"order1"}
								]
						},{"menuid":"28","icon":"icon-sys","menuname":"库存管理",
							"menus":[{"menuname":"库存管理","icon":"icon-nav","url":"stockmanagement"}
								]
						},{"menuid":"39","icon":"icon-sys","menuname":"商城管理",
							"menus":[
								]
						}
				]};
        //设置登录窗口
        function openPwd() {
            $('#w').window({
                title: '修改密码',
                width: 300,
                modal: true,
                shadow: true,
                closed: true,
                height: 160,
                resizable:false
            });
        }
        //关闭登录窗口
        function close() {
            $('#w').window('close');
        }

        

        //修改密码
        function serverLogin() {
            var $newpass = $('#txtNewPass');
            var $rePass = $('#txtRePass');

            if ($newpass.val() == '') {
                msgShow('系统提示', '请输入密码！', 'warning');
                return false;
            }
            if ($rePass.val() == '') {
                msgShow('系统提示', '请在一次输入密码！', 'warning');
                return false;
            }

            if ($newpass.val() != $rePass.val()) {
                msgShow('系统提示', '两次密码不一至！请重新输入', 'warning');
                return false;
            }

            $.post('/ajax/editpassword.ashx?newpass=' + $newpass.val(), function(msg) {
                msgShow('系统提示', '恭喜，密码修改成功！<br>您的新密码为：' + msg, 'info');
                $newpass.val('');
                $rePass.val('');
                close();
            })
            
        }

        $(function() {

            openPwd();
            //
            $('#editpass').click(function() {
                $('#w').window('open');
            });

            $('#btnEp').click(function() {
                serverLogin();
            })

           

            $('#loginOut').click(function() {
                $.messager.confirm('系统提示', '您确定要退出本次登录吗?', function(r) {

                    if (r) {
                        location.href = 'login';
                    }
                });

            })
			
			
			
        });