/* global afterAll beforeAll describe expect jest test */
import request from 'supertest'

import { appInit, initModel, Reporter } from '@liquid-labs/liq-core'
import { tryExec } from '@liquid-labs/shell-toolkit'

const logs = []
const testOptions = {
  skipCorePlugins : true,
  reporter        : new Reporter({ silent : true })
}

testOptions.reporter.log = jest.fn((msg) => { logs.push(msg) })
testOptions.reporter.error = testOptions.reporter.log
testOptions.logs = logs

describe('Liquid Labs orgs model', () => {
  let app, cache, model

  beforeAll(async() => {
    const rolesPluginPath = tryExec('npm explore @liquid-labs/liq-roles -- pwd').stdout.trim()

    model = initModel(testOptions);
    ({ app, cache } = await appInit(Object.assign(
      { model },
      testOptions,
      { pluginDirs : [rolesPluginPath], noAPIUpdate : true }
    )))
    // await new Promise(resolve => setTimeout(resolve, 250))
  })
  afterAll(async() => { // put the original staff.json back in place
    cache.release()
  })

  test('loads the roles', async() => {
    const { body, headers, status } = await request(app)
      .get('/orgs/liquid-labs/roles/list') // it reads weird, but this MUST go first
      .accept('application/json')

    expect(status).toBe(200)
    expect(headers['content-type']).toMatch(/application\/json/)
    expect(body).toHaveLength(19)
  })
})
