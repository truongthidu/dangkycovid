<?php

namespace App\Admin\Controllers;

use App\Models\LichTiem;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class LichTiemController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Lichtiem';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new LichTiem());

        $grid->column('id', __('Id'));
        $grid->column('userid', __('Userid'));
        $grid->column('noitiemid', __('Noitiemid'));
        $grid->column('doituonguutienid', __('Doituonguutienid'));
        $grid->column('ngaytiemid', __('Ngaytiemid'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(LichTiem::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('userid', __('Userid'));
        $show->field('noitiemid', __('Noitiemid'));
        $show->field('doituonguutienid', __('Doituonguutienid'));
        $show->field('ngaytiemid', __('Ngaytiemid'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new LichTiem());

        $form->number('userid', __('Userid'));
        $form->number('noitiemid', __('Noitiemid'));
        $form->number('doituonguutienid', __('Doituonguutienid'));
        $form->number('ngaytiemid', __('Ngaytiemid'));

        return $form;
    }
}
