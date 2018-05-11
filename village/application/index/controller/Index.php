<?php
//声明命名空间
namespace app\index\controller;

//导入系统控制器
use think\Controller;

//导入系统类
use think\View;
use think\Db;

//继承系统控制器
class Index extends Controller
{
    public function index()
    {
        return $this->fetch();
    }

    //处理登录的提交页面
    public function check(){
    	//接受数据
    	$data = [       								
                'username' => input('username'),  
                'password' => input('password'),

            ];

        //与数据库数据匹配
        $result=Db::query("select * from village_admin where username='{$data['username']}' and password='{$data['password']}'");

        if ($result){
            session('user',$data['username']);  
            $time=time();
            session('time',$time);       
        	$this->success('登陆成功!',url('admin'));
        }
        else{
        	$this->error('登陆失败!');
        }
    }

    public function register(){
    	return $this->fetch();
    }

    //处理注册的提交页面
    public function enroll(){
    	//接收数据
		$data = [       								  
                'username' => input('username'),  
                'password' => input('password'),
            ]; 

            //将注册信息插入数据库      	
			if(Db::table('village_admin')->insert($data)){          
   				$this->success('注册成功!',url('index'));
                $adminid = Db::name('village_admin')->getLastInsID(); 
                session('id',$adminid);   
   			}else{  
   				$this->error('注册失败!'); 
   			}  		
	}

	public function admin(){
		return $this ->fetch();
	}

	public function zhuhuliebiao(){
		$re=Db::query("select * from village_user");
		$this->assign('re',$re);
		return $this ->fetch();
	}

	public function tianjiazhuhu(){
		return $this ->fetch();
	}

	public function zhuhutianjia(){
		$data = [       								//接受传递的参数  
                'username' => input('username'),  
                'sex' => input('sex'),
                'address' => input('address'),
                'phone' => input('phone'),
                'isparking' => input('isparking'),
            ];
        if(Db::table('village_user')->insert($data)){        //添加数据  
   			$this->success('添加成功!',url('zhuhuliebiao')); 			//成功后跳转   
   			}else{  
   			$this->error('添加失败!'); 
   			}
	}


	public function zhuhuxiugai($id){
		$data = [       								//接受传递的参数  
                'username' => input('username'),  
                'sex' => input('sex'),
                'address' => input('address'),
                'phone' => input('phone'),
                'isparking' => input('isparking'),
            ];
            // dump($data);
            // dump($id);
            $shu=Db::table('village_user')->where('id',$id)->update($data);
            if($shu>0)
            {
            	$this->success('修改成功!',url('zhuhuliebiao'));
            }else{
            	$this->error('修改失败!');
            }
	}

	public function shanchuzhuhu($id){
		//$se=Request::instance()->post('id');
		Db::table('village_user')->where('id',$id)->delete();
	}

	public function xiugaizhuhu($id){
        $re=Db::table('village_user')->where('id',$id)->find();
        $this->assign('re',$re);
		return $this->fetch();
	}

	public function jiaofeiliebiao(){
		$re=Db::query("select * from village_paying");
		$this->assign('re',$re);
		return $this->fetch();
	}

	public function jiaofeitianjia(){
		$time=time();
            // session('time',$time);
		$data = [       								//接受传递的参数  
                'username' => input('username'),  
                'title' => input('title'),
                'number' => input('number'),
                'time' =>$time,
            ];
        if(Db::table('village_paying')->insert($data)){        //添加数据  
   			$this->success('添加成功!',url('jiaofeiliebiao')); 			//成功后跳转   
   			}else{  
   			$this->error('添加失败!'); 
   			}
	}

	public function shanchujiaofei($id){
		//$se=Request::instance()->post('id');
		Db::table('village_paying')->where('id',$id)->delete();
	}

	public function jiaofeixiugai($id){
		$time=time();
		$data = [       								//接受传递的参数  
                'username' => input('username'),  
                'title' => input('title'),
                'number' => input('number'),
                'time' =>$time,
            ];
            // dump($data);
            // dump($id);
            $shu=Db::table('village_paying')->where('id',$id)->update($data);
            if($shu>0)
            {
            	$this->success('修改成功!',url('jiaofeiliebiao'));
            }else{
            	$this->error('修改失败!');
            }
	}

	public function tianjiajiaofei(){
		return $this->fetch();
	}

	public function xiugaijiaofei($id){
        $re=Db::table('village_paying')->where('id',$id)->find();
        $this->assign('re',$re);
		return $this->fetch();
	}

	public function tianjiaweixiu(){
		return $this->fetch();
	}

	public function xiugaiweixiu($id){
        $re=Db::table('village_repair')->where('id',$id)->find();
        $this->assign('re',$re);
		return $this->fetch();
	}

	public function weixiuliebiao(){
		$re=Db::query("select * from village_repair");
		$this->assign('re',$re);
		return $this->fetch();
	}

	public function weixiutianjia(){
		$time=time();
            // session('time',$time);
		$data = [       								//接受传递的参数  
                'username' => input('username'),  
                'title' => input('title'),
                'money' => input('money'),
                'time' =>$time,
            ];
        if(Db::table('village_repair')->insert($data)){        //添加数据  
   			$this->success('添加成功!',url('weixiuliebiao')); 			//成功后跳转   
   			}else{  
   			$this->error('添加失败!'); 
   			}
	}

	public function shanchuweixiu($id){
		//$se=Request::instance()->post('id');
		Db::table('village_repair')->where('id',$id)->delete();
	}

	public function weixiuxiugai($id){
		$time=time();
		$data = [       								//接受传递的参数  
                'username' => input('username'),  
                'title' => input('title'),
                'money' => input('money'),
                'time' =>$time,
            ];
            // dump($data);
            // dump($id);
            $shu=Db::table('village_repair')->where('id',$id)->update($data);
            if($shu>0)
            {
            	$this->success('修改成功!',url('weixiuliebiao'));
            }else{
            	$this->error('修改失败!');
            }
	}

	public function tianjiachewei(){
		return $this->fetch();
	}

	public function xiugaichewei($id){
        $re=Db::table('village_parking')->where('id',$id)->find();
        $this->assign('re',$re);
		return $this->fetch();
	}

	public function cheweiliebiao(){
		$re=Db::query("select * from village_parking");
		$this->assign('re',$re);
		return $this->fetch();
	}

	public function cheweitianjia(){
		$time=time();
            // session('time',$time);
		$data = [       								//接受传递的参数  
                'username' => input('username'),  
                'number' => input('number'),
                'iscar' => input('iscar'),
                'time' =>$time,
            ];
        if(Db::table('village_parking')->insert($data)){        //添加数据  
   			$this->success('添加成功!',url('cheweiliebiao')); 			//成功后跳转   
   			}else{  
   			$this->error('添加失败!'); 
   			}
	}

	public function shanchuchewei($id){
		//$se=Request::instance()->post('id');
		Db::table('village_parking')->where('id',$id)->delete();
	}

	public function cheweixiugai($id){
		$time=time();
		$data = [       								//接受传递的参数  
                'username' => input('username'),  
                'number' => input('number'),
                'iscar' => input('iscar'),
                'time' =>$time,
            ];
            // dump($data);
            // dump($id);
            $shu=Db::table('village_parking')->where('id',$id)->update($data);
            if($shu>0)
            {
            	$this->success('修改成功!',url('cheweiliebiao'));
            }else{
            	$this->error('修改失败!');
            }
	}

	public function tousuliebiao(){
		$re=Db::query("select * from village_complain");
		$this->assign('re',$re);
		return $this->fetch();
	}

	public function shanchutousu($id){
		//$se=Request::instance()->post('id');
		Db::table('village_complain')->where('id',$id)->delete();
	}

	public function liuyanliebiao(){
		$re=Db::query("select * from village_message");
		$this->assign('re',$re);
		return $this->fetch();
	}

	public function shanchuliuyan($id){
		//$se=Request::instance()->post('id');
		Db::table('village_message')->where('id',$id)->delete();
	}
}
