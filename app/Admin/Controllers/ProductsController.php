<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class ProductsController extends Controller
{
    use HasResourceActions;

    public function index(Content $content)
    {
        return $content
            ->header('商品列表')
            ->description('我是商品列表的描述')
            ->body($this->grid());
    }

    public function edit($id, Content $content)
    {
        return $content
            ->header('商品编辑')
            ->body($this->form()->edit($id));
    }

    public function create(Content $content)
    {
        return $content
            ->header('创建商品')
            ->body($this->form());
    }

    protected function grid()
    {
        $grid = new Grid(new Product);

        $grid->id('ID');
        $grid->title('商品名称');

        $grid->on_sale('已经架')->display(function ($value) {
            return $value ? '是' : '否';
        });
        $grid->price('价格');
        $grid->rating('评分');
        $grid->sold_count('销量');
        $grid->review_count('评论数');
        $grid->actions(function ($action){
           $action->disableView();
           $action->disableDelete();
        });

        $grid->tools(function ($tools){
            $tools->batch(function ($batch){
                $batch->disableDelete();
            });
        });

        return $grid;
    }

    protected function form()
    {
        $form = new Form(new Product);

        $form->text('title', '商品名称')->rules('required');
        $form->image('image', '图片')->rules('required|image');

        //创建一个富文本编辑器
        $form->editor('description', '商品名称')->rules('required');
//         创建一组单选框
        $form->radio('on_sale', '上架')->options(['1' => '是', '0'=> '否'])->default('0');

        // 直接添加一对多的关联模型
        $form->hasMany('skus', '商品SKU',function (Form\NestedForm $form) {
            $form->text('title', 'SKU 名称')->rules('required');
            $form->text('description', 'SKU 描述')->rules('required');
            $form->text('price', '单价')->rules('required|numeric|min:0.01');
            $form->text('stock', '剩余库存')->rules('required|integer|min:0');
        });

        // 定义事件回调，当模型即将保存时会触发这个回调
        $form->saving(function (Form $form) {
            //Form::REMOVE_FLAG_NAME 是因为laravel-admin会将删除的字段依然传回后台,只不过将 Form::REMOVE_FLAG_NAME='_remove_' 设置为了 1
            //所以 where(Form::REMOVE_FLAG_NAME, 0) 意思就是没被删除的字段
            $form->model()->price = collect($form->input('skus'))->where(Form::REMOVE_FLAG_NAME, 0)->min('price') ?: 0;
        });

        return $form;
    }
}
