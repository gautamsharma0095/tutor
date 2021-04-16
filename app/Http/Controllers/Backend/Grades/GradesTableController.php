<?php

namespace App\Http\Controllers\Backend\Grades;

use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Grades\ManageGradeRequest;
use App\Repositories\Backend\GradesRepository;
use Yajra\DataTables\Facades\DataTables;

class GradesTableController extends Controller
{
    /**
     * @var \App\Repositories\Backend\GradesRepository
     */
    protected $repository;

    /**
     * @param \App\Repositories\Backend\GradesRepository $repository
     */
    public function __construct(GradesRepository $repository)
    {
        $this->repository = $repository;
    }

    /**
     * @param \App\Http\Requests\Backend\Pages\ManageGradeRequest $request
     *
     * @return mixed
     */
    public function __invoke(ManageGradeRequest  $request)
    {
        return Datatables::of($this->repository->getForDataTable())
            ->editColumn('created_at', function ($page) {
                return $page->created_at->toDateString();
            })
            ->addColumn('actions', function ($page) {
                return $page->action_buttons;
            })
            ->rawColumns(['actions'])
            ->make(true);
    }
}
