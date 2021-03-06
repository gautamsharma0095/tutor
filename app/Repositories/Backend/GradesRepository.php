<?php

namespace App\Repositories\Backend;

use App\Events\Backend\Pages\PageCreated;
use App\Events\Backend\Pages\PageDeleted;
use App\Events\Backend\Pages\PageUpdated;
use App\Exceptions\GeneralException;
use App\Models\Grade;
use App\Repositories\BaseRepository;
use Illuminate\Support\Str;

class GradesRepository extends BaseRepository
{
    /**
     * Associated Repository Model.
     */
    const MODEL = Grade::class;

    /**
     * Sortable.
     *
     * @var array
     */
    private $sortable = [
        'id',
        'name',
        'created_at',
        'updated_at',
    ];

    /**
     * Retrieve List.
     *
     * @var array
     * @return Collection
     */
    public function retrieveList(array $options = [])
    {
        $perPage = isset($options['per_page']) ? (int) $options['per_page'] : 20;
        $orderBy = isset($options['order_by']) && in_array($options['order_by'], $this->sortable) ? $options['order_by'] : 'created_at';
        $order = isset($options['order']) && in_array($options['order'], ['asc', 'desc']) ? $options['order'] : 'desc';
        $query = $this->query()
            ->with([
                'owner',
                'updater',
            ])
            ->orderBy($orderBy, $order);

        if ($perPage == -1) {
            return $query->get();
        }

        return $query->paginate($perPage);
    }

    /**
     * @return mixed
     */
    public function getForDataTable()
    {
        return $this->query()
            ->select([
                'grades.id',
                'grades.name',
                'grades.created_at',
            ]);
    }

    /**
     * @param array $input
     *
     * @throws \App\Exceptions\GeneralException
     *
     * @return bool
     */
    public function create(array $input)
    {
        if ($this->query()->where('name', $input['name'])->first()) {
            throw new GeneralException("Name Already Exist");
        }


        if ($page = Grade::create($input)) {
            // event(new PageCreated($page));

            return $page->fresh();
        }

        throw new GeneralException("Something Wrong In Create Grade");
    }

    /**
     * Update Page.
     *
     * @param \App\Models\Page $page
     * @param array $input
     */
    public function update(Grade $page, array $input)
    {
        if ($this->query()->where('name', $input['name'])->where('id', '!=', $page->id)->first()) {
            throw new GeneralException("Grade Already Exists");
        }

        if ($page->update($input)) {
            // event(new PageUpdated($page));

            return $page;
        }

        throw new GeneralException(
            __('exceptions.backend.pages.update_error')
        );
    }

    /**
     * @param \App\Models\Page $page
     *
     * @throws GeneralException
     *
     * @return bool
     */
    public function delete(Grade $page)
    {
        if ($page->delete()) {
            // event(new PageDeleted($page));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.pages.delete_error'));
    }
}
