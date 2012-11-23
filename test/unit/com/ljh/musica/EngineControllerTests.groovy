package com.ljh.musica



import org.junit.*
import grails.test.mixin.*

@TestFor(EngineController)
@Mock(Engine)
class EngineControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/engine/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.engineInstanceList.size() == 0
        assert model.engineInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.engineInstance != null
    }

    void testSave() {
        controller.save()

        assert model.engineInstance != null
        assert view == '/engine/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/engine/show/1'
        assert controller.flash.message != null
        assert Engine.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/engine/list'

        populateValidParams(params)
        def engine = new Engine(params)

        assert engine.save() != null

        params.id = engine.id

        def model = controller.show()

        assert model.engineInstance == engine
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/engine/list'

        populateValidParams(params)
        def engine = new Engine(params)

        assert engine.save() != null

        params.id = engine.id

        def model = controller.edit()

        assert model.engineInstance == engine
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/engine/list'

        response.reset()

        populateValidParams(params)
        def engine = new Engine(params)

        assert engine.save() != null

        // test invalid parameters in update
        params.id = engine.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/engine/edit"
        assert model.engineInstance != null

        engine.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/engine/show/$engine.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        engine.clearErrors()

        populateValidParams(params)
        params.id = engine.id
        params.version = -1
        controller.update()

        assert view == "/engine/edit"
        assert model.engineInstance != null
        assert model.engineInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/engine/list'

        response.reset()

        populateValidParams(params)
        def engine = new Engine(params)

        assert engine.save() != null
        assert Engine.count() == 1

        params.id = engine.id

        controller.delete()

        assert Engine.count() == 0
        assert Engine.get(engine.id) == null
        assert response.redirectedUrl == '/engine/list'
    }
}
