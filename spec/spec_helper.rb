# This file was generated by the `rails generate rspec:install` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# The generated `.rspec` file contains `--require spec_helper` which will cause
# this file to always be loaded, without a need to explicitly require it in any
# files.
#
# Given that it is always loaded, you are encouraged to keep this file as
# light-weight as possible. Requiring heavyweight dependencies from this file
# will add to the boot time of your test suite on EVERY test run, even for an
# individual file that may not need all of that loaded. Instead, consider making
# a separate helper file that requires the additional dependencies and performs
# the additional setup, and require it from the spec files that actually need
# it.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
# require 'webmock/rspec'
# WebMock.disable_net_connect!(allow_localhost: true)

require 'webmock/rspec'

# WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|

  config.before(:each) do
    #repo name
  stub_request(:get, "https://api.github.com/repos/croixk/little-esty-shop").
    with(headers: {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
    to_return(status: 200, body: '{"id":444196424,"node_id":"R_kgDOGnnmSA","name":"little-esty-shop"}', headers: {})

    #repo contributors
    stub_request(:get, "https://api.github.com/repos/croixk/little-esty-shop/contributors").
      with(headers: {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
      to_return(status: 200, body: '[{"login":"BrianZanti","id":8962411,"node_id":"MDQ6VXNlcjg5NjI0MTE=","avatar_url":"https://avatars.githubusercontent.com/u/8962411?v=4","gravatar_id":"","url":"https://api.github.com/users/BrianZanti","html_url":"https://github.com/BrianZanti","followers_url":"https://api.github.com/users/BrianZanti/followers","following_url":"https://api.github.com/users/BrianZanti/following{/other_user}","gists_url":"https://api.github.com/users/BrianZanti/gists{/gist_id}","starred_url":"https://api.github.com/users/BrianZanti/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/BrianZanti/subscriptions","organizations_url":"https://api.github.com/users/BrianZanti/orgs","repos_url":"https://api.github.com/users/BrianZanti/repos","events_url":"https://api.github.com/users/BrianZanti/events{/privacy}","received_events_url":"https://api.github.com/users/BrianZanti/received_events","type":"User","site_admin":false,"contributions":51},{"login":"dylan-harper","id":39470230,"node_id":"MDQ6VXNlcjM5NDcwMjMw","avatar_url":"https://avatars.githubusercontent.com/u/39470230?v=4","gravatar_id":"","url":"https://api.github.com/users/dylan-harper","html_url":"https://github.com/dylan-harper","followers_url":"https://api.github.com/users/dylan-harper/followers","following_url":"https://api.github.com/users/dylan-harper/following{/other_user}","gists_url":"https://api.github.com/users/dylan-harper/gists{/gist_id}","starred_url":"https://api.github.com/users/dylan-harper/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/dylan-harper/subscriptions","organizations_url":"https://api.github.com/users/dylan-harper/orgs","repos_url":"https://api.github.com/users/dylan-harper/repos","events_url":"https://api.github.com/users/dylan-harper/events{/privacy}","received_events_url":"https://api.github.com/users/dylan-harper/received_events","type":"User","site_admin":false,"contributions":49},{"login":"Henchworm","id":75279942,"node_id":"MDQ6VXNlcjc1Mjc5OTQy","avatar_url":"https://avatars.githubusercontent.com/u/75279942?v=4","gravatar_id":"","url":"https://api.github.com/users/Henchworm","html_url":"https://github.com/Henchworm","followers_url":"https://api.github.com/users/Henchworm/followers","following_url":"https://api.github.com/users/Henchworm/following{/other_user}","gists_url":"https://api.github.com/users/Henchworm/gists{/gist_id}","starred_url":"https://api.github.com/users/Henchworm/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/Henchworm/subscriptions","organizations_url":"https://api.github.com/users/Henchworm/orgs","repos_url":"https://api.github.com/users/Henchworm/repos","events_url":"https://api.github.com/users/Henchworm/events{/privacy}","received_events_url":"https://api.github.com/users/Henchworm/received_events","type":"User","site_admin":false,"contributions":42},{"login":"croixk","id":20864043,"node_id":"MDQ6VXNlcjIwODY0MDQz","avatar_url":"https://avatars.githubusercontent.com/u/20864043?v=4","gravatar_id":"","url":"https://api.github.com/users/croixk","html_url":"https://github.com/croixk","followers_url":"https://api.github.com/users/croixk/followers","following_url":"https://api.github.com/users/croixk/following{/other_user}","gists_url":"https://api.github.com/users/croixk/gists{/gist_id}","starred_url":"https://api.github.com/users/croixk/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/croixk/subscriptions","organizations_url":"https://api.github.com/users/croixk/orgs","repos_url":"https://api.github.com/users/croixk/repos","events_url":"https://api.github.com/users/croixk/events{/privacy}","received_events_url":"https://api.github.com/users/croixk/received_events","type":"User","site_admin":false,"contributions":22},{"login":"jacksonvaldez","id":87635398,"node_id":"MDQ6VXNlcjg3NjM1Mzk4","avatar_url":"https://avatars.githubusercontent.com/u/87635398?v=4","gravatar_id":"","url":"https://api.github.com/users/jacksonvaldez","html_url":"https://github.com/jacksonvaldez","followers_url":"https://api.github.com/users/jacksonvaldez/followers","following_url":"https://api.github.com/users/jacksonvaldez/following{/other_user}","gists_url":"https://api.github.com/users/jacksonvaldez/gists{/gist_id}","starred_url":"https://api.github.com/users/jacksonvaldez/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/jacksonvaldez/subscriptions","organizations_url":"https://api.github.com/users/jacksonvaldez/orgs","repos_url":"https://api.github.com/users/jacksonvaldez/repos","events_url":"https://api.github.com/users/jacksonvaldez/events{/privacy}","received_events_url":"https://api.github.com/users/jacksonvaldez/received_events","type":"User","site_admin":false,"contributions":10},{"login":"timomitchel","id":23040094,"node_id":"MDQ6VXNlcjIzMDQwMDk0","avatar_url":"https://avatars.githubusercontent.com/u/23040094?v=4","gravatar_id":"","url":"https://api.github.com/users/timomitchel","html_url":"https://github.com/timomitchel","followers_url":"https://api.github.com/users/timomitchel/followers","following_url":"https://api.github.com/users/timomitchel/following{/other_user}","gists_url":"https://api.github.com/users/timomitchel/gists{/gist_id}","starred_url":"https://api.github.com/users/timomitchel/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/timomitchel/subscriptions","organizations_url":"https://api.github.com/users/timomitchel/orgs","repos_url":"https://api.github.com/users/timomitchel/repos","events_url":"https://api.github.com/users/timomitchel/events{/privacy}","received_events_url":"https://api.github.com/users/timomitchel/received_events","type":"User","site_admin":false,"contributions":9},{"login":"scottalexandra","id":8812335,"node_id":"MDQ6VXNlcjg4MTIzMzU=","avatar_url":"https://avatars.githubusercontent.com/u/8812335?v=4","gravatar_id":"","url":"https://api.github.com/users/scottalexandra","html_url":"https://github.com/scottalexandra","followers_url":"https://api.github.com/users/scottalexandra/followers","following_url":"https://api.github.com/users/scottalexandra/following{/other_user}","gists_url":"https://api.github.com/users/scottalexandra/gists{/gist_id}","starred_url":"https://api.github.com/users/scottalexandra/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/scottalexandra/subscriptions","organizations_url":"https://api.github.com/users/scottalexandra/orgs","repos_url":"https://api.github.com/users/scottalexandra/repos","events_url":"https://api.github.com/users/scottalexandra/events{/privacy}","received_events_url":"https://api.github.com/users/scottalexandra/received_events","type":"User","site_admin":false,"contributions":3},{"login":"jamisonordway","id":33180544,"node_id":"MDQ6VXNlcjMzMTgwNTQ0","avatar_url":"https://avatars.githubusercontent.com/u/33180544?v=4","gravatar_id":"","url":"https://api.github.com/users/jamisonordway","html_url":"https://github.com/jamisonordway","followers_url":"https://api.github.com/users/jamisonordway/followers","following_url":"https://api.github.com/users/jamisonordway/following{/other_user}","gists_url":"https://api.github.com/users/jamisonordway/gists{/gist_id}","starred_url":"https://api.github.com/users/jamisonordway/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/jamisonordway/subscriptions","organizations_url":"https://api.github.com/users/jamisonordway/orgs","repos_url":"https://api.github.com/users/jamisonordway/repos","events_url":"https://api.github.com/users/jamisonordway/events{/privacy}","received_events_url":"https://api.github.com/users/jamisonordway/received_events","type":"User","site_admin":false,"contributions":1}]', headers: {})

      #commits per person
      stub_request(:get, "https://api.github.com/repos/croixk/little-esty-shop/commits?page=1&per_page=100").
        with(headers: {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
        to_return(status: 200, body: '[{"login":"BrianZanti","id":8962411,"node_id":"MDQ6VXNlcjg5NjI0MTE=","avatar_url":"https://avatars.githubusercontent.com/u/8962411?v=4","gravatar_id":"","url":"https://api.github.com/users/BrianZanti","html_url":"https://github.com/BrianZanti","followers_url":"https://api.github.com/users/BrianZanti/followers","following_url":"https://api.github.com/users/BrianZanti/following{/other_user}","gists_url":"https://api.github.com/users/BrianZanti/gists{/gist_id}","starred_url":"https://api.github.com/users/BrianZanti/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/BrianZanti/subscriptions","organizations_url":"https://api.github.com/users/BrianZanti/orgs","repos_url":"https://api.github.com/users/BrianZanti/repos","events_url":"https://api.github.com/users/BrianZanti/events{/privacy}","received_events_url":"https://api.github.com/users/BrianZanti/received_events","type":"User","site_admin":false,"contributions":51},{"login":"dylan-harper","id":39470230,"node_id":"MDQ6VXNlcjM5NDcwMjMw","avatar_url":"https://avatars.githubusercontent.com/u/39470230?v=4","gravatar_id":"","url":"https://api.github.com/users/dylan-harper","html_url":"https://github.com/dylan-harper","followers_url":"https://api.github.com/users/dylan-harper/followers","following_url":"https://api.github.com/users/dylan-harper/following{/other_user}","gists_url":"https://api.github.com/users/dylan-harper/gists{/gist_id}","starred_url":"https://api.github.com/users/dylan-harper/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/dylan-harper/subscriptions","organizations_url":"https://api.github.com/users/dylan-harper/orgs","repos_url":"https://api.github.com/users/dylan-harper/repos","events_url":"https://api.github.com/users/dylan-harper/events{/privacy}","received_events_url":"https://api.github.com/users/dylan-harper/received_events","type":"User","site_admin":false,"contributions":49},{"login":"Henchworm","id":75279942,"node_id":"MDQ6VXNlcjc1Mjc5OTQy","avatar_url":"https://avatars.githubusercontent.com/u/75279942?v=4","gravatar_id":"","url":"https://api.github.com/users/Henchworm","html_url":"https://github.com/Henchworm","followers_url":"https://api.github.com/users/Henchworm/followers","following_url":"https://api.github.com/users/Henchworm/following{/other_user}","gists_url":"https://api.github.com/users/Henchworm/gists{/gist_id}","starred_url":"https://api.github.com/users/Henchworm/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/Henchworm/subscriptions","organizations_url":"https://api.github.com/users/Henchworm/orgs","repos_url":"https://api.github.com/users/Henchworm/repos","events_url":"https://api.github.com/users/Henchworm/events{/privacy}","received_events_url":"https://api.github.com/users/Henchworm/received_events","type":"User","site_admin":false,"contributions":42},{"login":"croixk","id":20864043,"node_id":"MDQ6VXNlcjIwODY0MDQz","avatar_url":"https://avatars.githubusercontent.com/u/20864043?v=4","gravatar_id":"","url":"https://api.github.com/users/croixk","html_url":"https://github.com/croixk","followers_url":"https://api.github.com/users/croixk/followers","following_url":"https://api.github.com/users/croixk/following{/other_user}","gists_url":"https://api.github.com/users/croixk/gists{/gist_id}","starred_url":"https://api.github.com/users/croixk/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/croixk/subscriptions","organizations_url":"https://api.github.com/users/croixk/orgs","repos_url":"https://api.github.com/users/croixk/repos","events_url":"https://api.github.com/users/croixk/events{/privacy}","received_events_url":"https://api.github.com/users/croixk/received_events","type":"User","site_admin":false,"contributions":22},{"login":"jacksonvaldez","id":87635398,"node_id":"MDQ6VXNlcjg3NjM1Mzk4","avatar_url":"https://avatars.githubusercontent.com/u/87635398?v=4","gravatar_id":"","url":"https://api.github.com/users/jacksonvaldez","html_url":"https://github.com/jacksonvaldez","followers_url":"https://api.github.com/users/jacksonvaldez/followers","following_url":"https://api.github.com/users/jacksonvaldez/following{/other_user}","gists_url":"https://api.github.com/users/jacksonvaldez/gists{/gist_id}","starred_url":"https://api.github.com/users/jacksonvaldez/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/jacksonvaldez/subscriptions","organizations_url":"https://api.github.com/users/jacksonvaldez/orgs","repos_url":"https://api.github.com/users/jacksonvaldez/repos","events_url":"https://api.github.com/users/jacksonvaldez/events{/privacy}","received_events_url":"https://api.github.com/users/jacksonvaldez/received_events","type":"User","site_admin":false,"contributions":10},{"login":"timomitchel","id":23040094,"node_id":"MDQ6VXNlcjIzMDQwMDk0","avatar_url":"https://avatars.githubusercontent.com/u/23040094?v=4","gravatar_id":"","url":"https://api.github.com/users/timomitchel","html_url":"https://github.com/timomitchel","followers_url":"https://api.github.com/users/timomitchel/followers","following_url":"https://api.github.com/users/timomitchel/following{/other_user}","gists_url":"https://api.github.com/users/timomitchel/gists{/gist_id}","starred_url":"https://api.github.com/users/timomitchel/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/timomitchel/subscriptions","organizations_url":"https://api.github.com/users/timomitchel/orgs","repos_url":"https://api.github.com/users/timomitchel/repos","events_url":"https://api.github.com/users/timomitchel/events{/privacy}","received_events_url":"https://api.github.com/users/timomitchel/received_events","type":"User","site_admin":false,"contributions":9},{"login":"scottalexandra","id":8812335,"node_id":"MDQ6VXNlcjg4MTIzMzU=","avatar_url":"https://avatars.githubusercontent.com/u/8812335?v=4","gravatar_id":"","url":"https://api.github.com/users/scottalexandra","html_url":"https://github.com/scottalexandra","followers_url":"https://api.github.com/users/scottalexandra/followers","following_url":"https://api.github.com/users/scottalexandra/following{/other_user}","gists_url":"https://api.github.com/users/scottalexandra/gists{/gist_id}","starred_url":"https://api.github.com/users/scottalexandra/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/scottalexandra/subscriptions","organizations_url":"https://api.github.com/users/scottalexandra/orgs","repos_url":"https://api.github.com/users/scottalexandra/repos","events_url":"https://api.github.com/users/scottalexandra/events{/privacy}","received_events_url":"https://api.github.com/users/scottalexandra/received_events","type":"User","site_admin":false,"contributions":3},{"login":"jamisonordway","id":33180544,"node_id":"MDQ6VXNlcjMzMTgwNTQ0","avatar_url":"https://avatars.githubusercontent.com/u/33180544?v=4","gravatar_id":"","url":"https://api.github.com/users/jamisonordway","html_url":"https://github.com/jamisonordway","followers_url":"https://api.github.com/users/jamisonordway/followers","following_url":"https://api.github.com/users/jamisonordway/following{/other_user}","gists_url":"https://api.github.com/users/jamisonordway/gists{/gist_id}","starred_url":"https://api.github.com/users/jamisonordway/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/jamisonordway/subscriptions","organizations_url":"https://api.github.com/users/jamisonordway/orgs","repos_url":"https://api.github.com/users/jamisonordway/repos","events_url":"https://api.github.com/users/jamisonordway/events{/privacy}","received_events_url":"https://api.github.com/users/jamisonordway/received_events","type":"User","site_admin":false,"contributions":1}]', headers: {})


      #all merged commits
    stub_request(:get, "https://api.github.com/repos/croixk/little-esty-shop/pulls?state=closed&page=1&per_page=100").
      with(headers: {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
      to_return(status: 200, body: '{"id":444196424,"node_id":"R_kgDOGnnmSA","name":"little-esty-shop","full_name":"croixk/little-esty-shop","private":false,"owner":{"login":"croixk","id":20864043,"node_id":"MDQ6VXNlcjIwODY0MDQz","avatar_url":"https://avatars.githubusercontent.com/u/20864043?v=4","gravatar_id":"","url":"https://api.github.com/users/croixk","html_url":"https://github.com/croixk","followers_url":"https://api.github.com/users/croixk/followers","following_url":"https://api.github.com/users/croixk/following{/other_user}","gists_url":"https://api.github.com/users/croixk/gists{/gist_id}","starred_url":"https://api.github.com/users/croixk/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/croixk/subscriptions","organizations_url":"https://api.github.com/users/croixk/orgs","repos_url":"https://api.github.com/users/croixk/repos","events_url":"https://api.github.com/users/croixk/events{/privacy}","received_events_url":"https://api.github.com/users/croixk/received_events","type":"User","site_admin":false},"html_url":"https://github.com/croixk/little-esty-shop","description":null,"fork":true,"url":"https://api.github.com/repos/croixk/little-esty-shop","forks_url":"https://api.github.com/repos/croixk/little-esty-shop/forks","keys_url":"https://api.github.com/repos/croixk/little-esty-shop/keys{/key_id}","collaborators_url":"https://api.github.com/repos/croixk/little-esty-shop/collaborators{/collaborator}","teams_url":"https://api.github.com/repos/croixk/little-esty-shop/teams","hooks_url":"https://api.github.com/repos/croixk/little-esty-shop/hooks","issue_events_url":"https://api.github.com/repos/croixk/little-esty-shop/issues/events{/number}","events_url":"https://api.github.com/repos/croixk/little-esty-shop/events","assignees_url":"https://api.github.com/repos/croixk/little-esty-shop/assignees{/user}","branches_url":"https://api.github.com/repos/croixk/little-esty-shop/branches{/branch}","tags_url":"https://api.github.com/repos/croixk/little-esty-shop/tags","blobs_url":"https://api.github.com/repos/croixk/little-esty-shop/git/blobs{/sha}","git_tags_url":"https://api.github.com/repos/croixk/little-esty-shop/git/tags{/sha}","git_refs_url":"https://api.github.com/repos/croixk/little-esty-shop/git/refs{/sha}","trees_url":"https://api.github.com/repos/croixk/little-esty-shop/git/trees{/sha}","statuses_url":"https://api.github.com/repos/croixk/little-esty-shop/statuses/{sha}","languages_url":"https://api.github.com/repos/croixk/little-esty-shop/languages","stargazers_url":"https://api.github.com/repos/croixk/little-esty-shop/stargazers","contributors_url":"https://api.github.com/repos/croixk/little-esty-shop/contributors","subscribers_url":"https://api.github.com/repos/croixk/little-esty-shop/subscribers","subscription_url":"https://api.github.com/repos/croixk/little-esty-shop/subscription","commits_url":"https://api.github.com/repos/croixk/little-esty-shop/commits{/sha}","git_commits_url":"https://api.github.com/repos/croixk/little-esty-shop/git/commits{/sha}","comments_url":"https://api.github.com/repos/croixk/little-esty-shop/comments{/number}","issue_comment_url":"https://api.github.com/repos/croixk/little-esty-shop/issues/comments{/number}","contents_url":"https://api.github.com/repos/croixk/little-esty-shop/contents/{+path}","compare_url":"https://api.github.com/repos/croixk/little-esty-shop/compare/{base}...{head}","merges_url":"https://api.github.com/repos/croixk/little-esty-shop/merges","archive_url":"https://api.github.com/repos/croixk/little-esty-shop/{archive_format}{/ref}","downloads_url":"https://api.github.com/repos/croixk/little-esty-shop/downloads","issues_url":"https://api.github.com/repos/croixk/little-esty-shop/issues{/number}","pulls_url":"https://api.github.com/repos/croixk/little-esty-shop/pulls{/number}","milestones_url":"https://api.github.com/repos/croixk/little-esty-shop/milestones{/number}","notifications_url":"https://api.github.com/repos/croixk/little-esty-shop/notifications{?since,all,participating}","labels_url":"https://api.github.com/repos/croixk/little-esty-shop/labels{/name}","releases_url":"https://api.github.com/repos/croixk/little-esty-shop/releases{/id}","deployments_url":"https://api.github.com/repos/croixk/little-esty-shop/deployments","created_at":"2022-01-03T20:52:32Z","updated_at":"2022-01-08T23:47:16Z","pushed_at":"2022-01-12T07:20:15Z","git_url":"git://github.com/croixk/little-esty-shop.git","ssh_url":"git@github.com:croixk/little-esty-shop.git","clone_url":"https://github.com/croixk/little-esty-shop.git","svn_url":"https://github.com/croixk/little-esty-shop","homepage":null,"size":1302,"stargazers_count":0,"watchers_count":0,"language":"Ruby","has_issues":true,"has_projects":true,"has_downloads":true,"has_wiki":true,"has_pages":false,"forks_count":0,"mirror_url":null,"archived":false,"disabled":false,"open_issues_count":40,"license":null,"allow_forking":true,"is_template":false,"topics":[],"visibility":"public","forks":0,"open_issues":40,"watchers":0,"default_branch":"main","temp_clone_token":null,"parent":{"id":313663245,"node_id":"MDEwOlJlcG9zaXRvcnkzMTM2NjMyNDU=","name":"little-esty-shop","full_name":"turingschool-examples/little-esty-shop","private":false,"owner":{"login":"turingschool-examples","id":8518346,"node_id":"MDEyOk9yZ2FuaXphdGlvbjg1MTgzNDY=","avatar_url":"https://avatars.githubusercontent.com/u/8518346?v=4","gravatar_id":"","url":"https://api.github.com/users/turingschool-examples","html_url":"https://github.com/turingschool-examples","followers_url":"https://api.github.com/users/turingschool-examples/followers","following_url":"https://api.github.com/users/turingschool-examples/following{/other_user}","gists_url":"https://api.github.com/users/turingschool-examples/gists{/gist_id}","starred_url":"https://api.github.com/users/turingschool-examples/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/turingschool-examples/subscriptions","organizations_url":"https://api.github.com/users/turingschool-examples/orgs","repos_url":"https://api.github.com/users/turingschool-examples/repos","events_url":"https://api.github.com/users/turingschool-examples/events{/privacy}","received_events_url":"https://api.github.com/users/turingschool-examples/received_events","type":"Organization","site_admin":false},"html_url":"https://github.com/turingschool-examples/little-esty-shop","description":null,"fork":false,"url":"https://api.github.com/repos/turingschool-examples/little-esty-shop","forks_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/forks","keys_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/keys{/key_id}","collaborators_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/collaborators{/collaborator}","teams_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/teams","hooks_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/hooks","issue_events_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/issues/events{/number}","events_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/events","assignees_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/assignees{/user}","branches_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/branches{/branch}","tags_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/tags","blobs_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/git/blobs{/sha}","git_tags_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/git/tags{/sha}","git_refs_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/git/refs{/sha}","trees_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/git/trees{/sha}","statuses_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/statuses/{sha}","languages_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/languages","stargazers_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/stargazers","contributors_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/contributors","subscribers_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/subscribers","subscription_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/subscription","commits_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/commits{/sha}","git_commits_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/git/commits{/sha}","comments_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/comments{/number}","issue_comment_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/issues/comments{/number}","contents_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/contents/{+path}","compare_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/compare/{base}...{head}","merges_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/merges","archive_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/{archive_format}{/ref}","downloads_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/downloads","issues_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/issues{/number}","pulls_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/pulls{/number}","milestones_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/milestones{/number}","notifications_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/notifications{?since,all,participating}","labels_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/labels{/name}","releases_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/releases{/id}","deployments_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/deployments","created_at":"2020-11-17T15:33:36Z","updated_at":"2021-07-30T16:07:23Z","pushed_at":"2022-01-12T04:09:40Z","git_url":"git://github.com/turingschool-examples/little-esty-shop.git","ssh_url":"git@github.com:turingschool-examples/little-esty-shop.git","clone_url":"https://github.com/turingschool-examples/little-esty-shop.git","svn_url":"https://github.com/turingschool-examples/little-esty-shop","homepage":null,"size":1073,"stargazers_count":0,"watchers_count":0,"language":"Ruby","has_issues":true,"has_projects":true,"has_downloads":true,"has_wiki":true,"has_pages":false,"forks_count":166,"mirror_url":null,"archived":false,"disabled":false,"open_issues_count":66,"license":null,"allow_forking":true,"is_template":false,"topics":[],"visibility":"public","forks":166,"open_issues":66,"watchers":0,"default_branch":"main"},"source":{"id":313663245,"node_id":"MDEwOlJlcG9zaXRvcnkzMTM2NjMyNDU=","name":"little-esty-shop","full_name":"turingschool-examples/little-esty-shop","private":false,"owner":{"login":"turingschool-examples","id":8518346,"node_id":"MDEyOk9yZ2FuaXphdGlvbjg1MTgzNDY=","avatar_url":"https://avatars.githubusercontent.com/u/8518346?v=4","gravatar_id":"","url":"https://api.github.com/users/turingschool-examples","html_url":"https://github.com/turingschool-examples","followers_url":"https://api.github.com/users/turingschool-examples/followers","following_url":"https://api.github.com/users/turingschool-examples/following{/other_user}","gists_url":"https://api.github.com/users/turingschool-examples/gists{/gist_id}","starred_url":"https://api.github.com/users/turingschool-examples/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/turingschool-examples/subscriptions","organizations_url":"https://api.github.com/users/turingschool-examples/orgs","repos_url":"https://api.github.com/users/turingschool-examples/repos","events_url":"https://api.github.com/users/turingschool-examples/events{/privacy}","received_events_url":"https://api.github.com/users/turingschool-examples/received_events","type":"Organization","site_admin":false},"html_url":"https://github.com/turingschool-examples/little-esty-shop","description":null,"fork":false,"url":"https://api.github.com/repos/turingschool-examples/little-esty-shop","forks_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/forks","keys_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/keys{/key_id}","collaborators_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/collaborators{/collaborator}","teams_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/teams","hooks_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/hooks","issue_events_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/issues/events{/number}","events_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/events","assignees_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/assignees{/user}","branches_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/branches{/branch}","tags_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/tags","blobs_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/git/blobs{/sha}","git_tags_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/git/tags{/sha}","git_refs_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/git/refs{/sha}","trees_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/git/trees{/sha}","statuses_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/statuses/{sha}","languages_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/languages","stargazers_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/stargazers","contributors_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/contributors","subscribers_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/subscribers","subscription_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/subscription","commits_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/commits{/sha}","git_commits_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/git/commits{/sha}","comments_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/comments{/number}","issue_comment_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/issues/comments{/number}","contents_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/contents/{+path}","compare_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/compare/{base}...{head}","merges_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/merges","archive_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/{archive_format}{/ref}","downloads_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/downloads","issues_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/issues{/number}","pulls_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/pulls{/number}","milestones_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/milestones{/number}","notifications_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/notifications{?since,all,participating}","labels_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/labels{/name}","releases_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/releases{/id}","deployments_url":"https://api.github.com/repos/turingschool-examples/little-esty-shop/deployments","created_at":"2020-11-17T15:33:36Z","updated_at":"2021-07-30T16:07:23Z","pushed_at":"2022-01-12T04:09:40Z","git_url":"git://github.com/turingschool-examples/little-esty-shop.git","ssh_url":"git@github.com:turingschool-examples/little-esty-shop.git","clone_url":"https://github.com/turingschool-examples/little-esty-shop.git","svn_url":"https://github.com/turingschool-examples/little-esty-shop","homepage":null,"size":1073,"stargazers_count":0,"watchers_count":0,"language":"Ruby","has_issues":true,"has_projects":true,"has_downloads":true,"has_wiki":true,"has_pages":false,"forks_count":166,"mirror_url":null,"archived":false,"disabled":false,"open_issues_count":66,"license":null,"allow_forking":true,"is_template":false,"topics":[],"visibility":"public","forks":166,"open_issues":66,"watchers":0,"default_branch":"main"},"network_count":166,"subscribers_count":0}' , headers: {})




  end

  config.expect_with :rspec do |expectations|
    # This option will default to `true` in RSpec 4. It makes the `description`
    # and `failure_message` of custom matchers include text for helper methods
    # defined using `chain`, e.g.:
    #     be_bigger_than(2).and_smaller_than(4).description
    #     # => "be bigger than 2 and smaller than 4"
    # ...rather than:
    #     # => "be bigger than 2"
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  # rspec-mocks config goes here. You can use an alternate test double
  # library (such as bogus or mocha) by changing the `mock_with` option here.
  config.mock_with :rspec do |mocks|
    # Prevents you from mocking or stubbing a method that does not exist on
    # a real object. This is generally recommended, and will default to
    # `true` in RSpec 4.
    mocks.verify_partial_doubles = true
  end

  # This option will default to `:apply_to_host_groups` in RSpec 4 (and will
  # have no way to turn it off -- the option exists only for backwards
  # compatibility in RSpec 3). It causes shared context metadata to be
  # inherited by the metadata hash of host groups and examples, rather than
  # triggering implicit auto-inclusion in groups with matching metadata.
  config.shared_context_metadata_behavior = :apply_to_host_groups

# The settings below are suggested to provide a good initial experience
# with RSpec, but feel free to customize to your heart's content.
=begin
  # This allows you to limit a spec run to individual examples or groups
  # you care about by tagging them with `:focus` metadata. When nothing
  # is tagged with `:focus`, all examples get run. RSpec also provides
  # aliases for `it`, `describe`, and `context` that include `:focus`
  # metadata: `fit`, `fdescribe` and `fcontext`, respectively.
  config.filter_run_when_matching :focus

  # Allows RSpec to persist some state between runs in order to support
  # the `--only-failures` and `--next-failure` CLI options. We recommend
  # you configure your source control system to ignore this file.
  config.example_status_persistence_file_path = "spec/examples.txt"

  # Limits the available syntax to the non-monkey patched syntax that is
  # recommended. For more details, see:
  #   - http://rspec.info/blog/2012/06/rspecs-new-expectation-syntax/
  #   - http://www.teaisaweso.me/blog/2013/05/27/rspecs-new-message-expectation-syntax/
  #   - http://rspec.info/blog/2014/05/notable-changes-in-rspec-3/#zero-monkey-patching-mode
  config.disable_monkey_patching!

  # Many RSpec users commonly either run the entire suite or an individual
  # file, and it's useful to allow more verbose output when running an
  # individual spec file.
  if config.files_to_run.one?
    # Use the documentation formatter for detailed output,
    # unless a formatter has already been configured
    # (e.g. via a command-line flag).
    config.default_formatter = "doc"
  end

  # Print the 10 slowest examples and example groups at the
  # end of the spec run, to help surface which specs are running
  # particularly slow.
  config.profile_examples = 10

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = :random

  # Seed global randomization in this process using the `--seed` CLI option.
  # Setting this allows you to use `--seed` to deterministically reproduce
  # test failures related to randomization by passing the same `--seed` value
  # as the one that triggered the failure.
  Kernel.srand config.seed
=end
end
